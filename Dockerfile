FROM python:2-alpine

RUN pip install pymongo

WORKDIR /srv

ADD https://raw.githubusercontent.com/mzupan/nagios-plugin-mongodb/master/check_mongodb.py /srv/check_mongodb.py

RUN chmod +x /srv/check_mongodb.py

ENTRYPOINT [ "/srv/check_mongodb.py" ]

CMD [ "--help" ]
