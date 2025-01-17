FROM python:3.8.2-slim-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /crypto_reader

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . /crypto_reader

COPY ./entrypoint.sh /

ENTRYPOINT ["sh","/entrypoint.sh"]