FROM amazonlinux

RUN yum update -y
RUN yum install python3 python3-pip pip -y

RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
