# 基础镜像
FROM python:3-alpine

# 从网络拷贝
RUN apk add --no-cache git gcc musl-dev python3-dev libffi-dev openssl-dev

# 克隆项目，安装依赖
RUN git clone https://github.com/realByg/digitalocean-helper-bot.git && \
    cd digitalocean-helper-bot && \
    pip3 install -r requirements.txt

# 工作目录
WORKDIR /digitalocean-helper-bot

# 启动 bot
CMD ["python3", "main.py"]