FROM python:3.8

RUN pip install commitizen

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
