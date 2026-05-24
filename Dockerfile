FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y ffmpeg nodejs npm && \
    apt-get clean

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -U -r requirements.txt

CMD ["bash", "start"]
