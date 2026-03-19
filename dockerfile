FROM apache/airflow:2.9.0

# install as root (required by airflow image design)
USER root

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt

# switch back
USER airflow