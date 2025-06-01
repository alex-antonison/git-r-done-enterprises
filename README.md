# Welcome to Git-R-Done Enterprises

This is an example project to practice learning git concepts.

This project deploys a streamlit app at [https://git-r-done-enterprises.streamlit.app/](https://git-r-done-enterprises.streamlit.app/)

## Setup

1. Install Python 3.12
2. Setup virtual environment with `python -m venv .venv`
3. Install packages with `pip install -r requirements.txt`
4. Load environment `source .venv/bin/activate`
5. Install dbt deps `cd dbt && dbt deps`
6. Setup `.streamlit/secrets.toml`
   1. Copy the [.streamlit/secrets-example.toml](.streamlit/secrets-example.toml) and save it as `secrets.toml`

## Running locally

dbt can be run locally from the [dbt](dbt/) directory. This will be required to be done at least once before you can run the streamlit app locally.

     cd dbt
     dbt run

Once dbt has been run at least once, you can then start up the streamlit app via:

    streamlit run streamlit_app.py
