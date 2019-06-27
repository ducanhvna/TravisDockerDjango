FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /travisdockerdjango
WORKDIR /travisdockerdjango
ADD requirements.txt /travisdockerdjango/
RUN pip install -U pip && pip install -r requirements.txt
ADD . /travisdockerdjango/
