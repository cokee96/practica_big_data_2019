FROM ubuntu:18.04

RUN apt update && apt -y install python3-pip

WORKDIR /practica_big_data_2019

COPY ./requirements.txt ./requirements.txt
COPY resources/ /home/resources/
COPY flight_prediction_2.12-0.1.jar ./flight_prediction_2.12-0.1.jar

RUN pip3 install -r requirements.txt
RUN export PROJECT_HOME=/home/

EXPOSE 5000

CMD python3 /home/resources/web/predict_flask.py
