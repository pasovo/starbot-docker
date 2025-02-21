FROM python:3.10.11-slim

WORKDIR /starbot

RUN pip install -i https://mirrors.cloud.tencent.com/pypi/simple starbot-bilibili

COPY . .

EXPOSE 7827

CMD ["python", "main.py"]
