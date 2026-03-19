FROM apache/airflow:2.9.0

# switch to airflow user BEFORE pip install
USER airflow

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt