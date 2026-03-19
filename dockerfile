FROM apache/airflow:2.9.0

# copy first
COPY requirements.txt /requirements.txt

# install as airflow user (required)
USER airflow

RUN pip install --no-cache-dir -r /requirements.txt