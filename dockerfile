FROM python:3.9-slim-buster

RUN useradd wk2022

WORKDIR /home/wk2022

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY wk2022.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP wk2022.py

RUN chown -R wk2022:wk2022 ./
USER wk2022

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]