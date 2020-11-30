FROM bde2020/spark-base:3.0.1-hadoop3.2

COPY . .
COPY start-worker.sh /
COPY flight_prediction_2.12-0.1.jar /practica_big_data_2019/


ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"


#spark-submit

ENV SPARK_MASTER_URL="spark://spark-master:7077"
ENV SPARK_SUBMIT_ARGS="org.mongodb.spark:mongo-spark-connector_2.12:3.0.0,org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.1"
ENV SPARK_APPLICATION_ARGS=""
ENV SPARK_APPLICATION_JAR_LOCATION="/practica_big_data_2019/flight_prediction_2.12-0.1.jar"
ENV SPARK_APPLICATION_MAIN_CLASS="es.upm.dit.ging.predictor.MakePrediction"

EXPOSE 8081

CMD ["/bin/bash", "/start-worker.sh"]
