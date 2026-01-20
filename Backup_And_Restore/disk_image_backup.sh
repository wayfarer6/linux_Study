#/!/bin/sh

export SOURCE_DISK
export OUTPUT_IMAGE

echo "현재 디스크 마운트 정보"
awk | fdisk -l # disk 이름 용ㄹ량 그리고 경로를 
SOURCE_DISK=read -p " 백업할 디스크를 지정하세요:"
OUTPUT_IMAGE=SOURCE_DISK+".img"
dd if=SOURCE_DISK  of=OUTPUT_IMAGE

