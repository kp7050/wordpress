# 베이스 이미지 선택
FROM wordpress:latest

# 작업 디렉토리 설정
# WORKDIR /app

COPY . /var/www/html

# 포트 노출
EXPOSE 80

# 컨테이너 실행 시 실행될 명령
CMD ["npm", "start"]