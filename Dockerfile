FROM python:3.10.11-slim

WORKDIR /starbot

RUN pip install -i https://mirrors.cloud.tencent.com/pypi/simple starbot-bilibili


EXPOSE 7827

EXPOSE 6379

CMD ["python", "main.py"]
