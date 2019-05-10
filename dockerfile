#!/usr/bin/env docker build --compress -t pvtmert/safaribooks -f

FROM python:3-slim

VOLUME /data/Books
WORKDIR /data

COPY ./ ./

RUN pip3 install --upgrade -r requirements.txt

ENTRYPOINT [ "python3", "safaribooks.py" ]
CMD        [ "--help" ]
