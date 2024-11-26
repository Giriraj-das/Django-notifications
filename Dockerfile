FROM python:3.12-slim

WORKDIR /code

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1
ENV PYTHON_PATH=/code

RUN groupadd --system service && useradd --system -g service web

RUN apt-get update && \
    apt-get install -y pkg-config default-libmysqlclient-dev build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

USER web

ENTRYPOINT ["bash", "entrypoint.sh"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000