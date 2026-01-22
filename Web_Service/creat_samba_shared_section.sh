#!/bin/bash

SHARED_DIR="$1"
VALID_USERS="$2" # "유저1 유저2 유저3"
SECTION_NAME= "$3"

# 공유 디렉토리 생성
mkdir -p "$SHARED_DIR"

# Samba 설정 추가
sudo tee -a /etc/samba/smb.conf > /dev/null <<EOF # tee를 써야 리다이렉션 커맨드에 root 권한 적용, tee는 표준 입력을 받아 파일에 쓰는 프로그램이라 sudo tee -a로 실행시 root 권한으로 append 가능
[$SECTION_NAME] # tee는 stdout을 출력하므로 tee 뒤에 있는 불필요한 출력 날리기
    path = $SHARED_DIR
    valid users = $VALID_USERS # "유저1 유저2 유저3"
    writable = yes
    read only = no
EOF

# Samba 서비스 재시작
sudo systemctl restart smbd
