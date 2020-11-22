#!/bin/sh

test_file='fiotest.tmp'
result_file='result.txt'
size='500m'
runtime='15'

if ! type fio >/dev/null 2>&1; then
    echo 'fio 未安装';
    exit 1;
fi

fio --loops=5 --size=${size} --filename=${test_file} --stonewall --ioengine=libaio --direct=1 --runtime=${runtime} --minimal --output=${result_file}\
  --name=Seq --bs=1m --rw=read \
  --name=SeqWrite --bs=1m --rw=write \
  --name=512K --bs=512k --rw=randread \
  --name=512Kwrite --bs=512k --rw=randwrite \
  --name=4KQD32 --bs=4k --iodepth=32 --rw=randread \
  --name=4KQD32write --bs=4k --iodepth=32 --rw=randwrite \
  --name=4K --bs=4k --rw=randread \
  --name=4Kwrite --bs=4k --rw=randwrite

echo ''
virtio=$(lsmod|grep -o 'virtio_scsi\|virtio_blk')
printf "磁盘虚拟化驱动: \033[31;40m ${virtio} \033[0m \n"

echo "Name     ReadBW(MB/s)   ReadIOPS      WriteBW(MB/s)   WriteIOPS"
echo "---------------------------------------------------------------"
awk -F ';' 'NR%2==1{rbw=$7/1000;riops=$8;printf "%-9s %11.1f %10d", $3, rbw, riops};NR%2==0{wbw=$48/1000;wiops=$49;printf "%18.1f %11d\n", wbw, wiops}' ${result_file}
echo "---------------------------------------------------------------"

rm ${result_file} ${test_file}

exit