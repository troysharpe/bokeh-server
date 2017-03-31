# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#/add-or-copy
# Fork from:
# https://hub.docker.com/r/amancevice/pandas
FROM continuumio/anaconda
MAINTAINER null

ENV BOKEH_APP demo.py
ENV APP_URL 127.0.0.1
ENV APP_PORT 5006

EXPOSE 5006
WORKDIR /bokeh

ADD demo.py /bokeh/
ADD entrypoint.sh /bokeh/

CMD ["sh", "entrypoint.sh"]

