# 베이스 이미지 선택
FROM wordpress

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 종속성 설치
COPY package.json package-lock.json /app/
RUN npm install

# 애플리케이션 파일 추가
COPY . /app/

# 포트 노출
EXPOSE 80

# 컨테이너 실행 시 실행될 명령
CMD ["npm", "start"]