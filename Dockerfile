FROM python:3.13.4

WORKDIR /root

COPY . /tmp/rq

RUN pip install /tmp/rq

RUN rm -r /tmp/rq

ENTRYPOINT ["rq", "worker"]
