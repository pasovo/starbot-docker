FROM python:3.10.11-slim

# 设置工作目录
WORKDIR /starbot

# 安装系统依赖和 Python 依赖
RUN apt update && apt install -y \
    build-essential \
    libpq-dev \
    && pip install -i https://mirrors.cloud.tencent.com/pypi/simple starbot-bilibili \
    && apt remove -y build-essential libpq-dev \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# 暴露端口（顺序无影响）
EXPOSE 6379 7827

# 运行程序
CMD ["python", "main.py"]
