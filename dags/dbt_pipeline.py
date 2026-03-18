from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id='dbt_pipeline',
    start_date=datetime(2024, 1, 1),
    schedule_interval=None,
    catchup=False
) as dag:

    dbt_run = BashOperator(
        task_id='run_dbt_models',
        bash_command='cd /app && dbt run'
    )

    dbt_test = BashOperator(
        task_id='test_dbt_models',
        bash_command='cd /app && dbt test'
    )

    dbt_run >> dbt_test