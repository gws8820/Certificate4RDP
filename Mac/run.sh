#!/bin/bash

source "$(dirname "$0")/paths.sh"

echo "Base64 (*.pem) 인증서를 PKCS#12 (*.pfx) 포맷으로 변환합니다."
read -s -p "비밀번호를 입력해주세요: " password
echo

openssl pkcs12 -export -inkey "$CERTFILE/privkey.pem" -in "$CERTFILE/fullchain.pem" -out "$CERTFILE/cert.pfx" -passout pass:"$password"

if [ $? -ne 0 ]; then
    echo "오류: OpenSSL 실행 중 오류가 발생하였습니다."
    exit 1
fi

echo "PFX 인증서가 현재 디렉터리에 저장되었습니다."