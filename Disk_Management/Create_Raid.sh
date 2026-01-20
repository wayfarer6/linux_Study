#!/bin/bash

# ./scritp --level=1  --mount --disks 공백으로 구분 
# 인자를 받아서 작동하도록 고치자 인터엑티브 보다는.
export ENABLE_AUTO_MOUNT=False # false가 기본 true 하면 fstab에 등
export MOUNT_POINT
export RAID_LEVEL
export TARGET_DISKS=[] # 인자 배열을 위로 받고
