FROM python:3.7-slim-buster

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

COPY ./tzfinderapp /tzfinderapp
COPY ./run.sh /run.sh

CMD /run.sh