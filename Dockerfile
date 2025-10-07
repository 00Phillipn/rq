FROM python:3.14.0rc3

WORKDIR /root

COPY . /tmp/rq

RUN pip install /tmp/rq

RUN rm -r /tmp/rq

ENTRYPOINT ["rq", "worker"]
