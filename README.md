# Welcome to Git-R-Done Enterprises

This is an example project to practice learning git concepts.

This project deploys a streamlit app at [https://git-r-done-enterprises.streamlit.app/](https://git-r-done-enterprises.streamlit.app/)

## Setup

1. Install Python (preferably 3.12 or 3.13)
2. Setup `.streamlit/secrets.toml`
   1. Copy the [.streamlit/secrets-example.toml](.streamlit/secrets-example.toml) and save it as `secrets.toml`

### Windows

1. Setup virtual environment with `python -m venv .venv`
2. Activate the environment `..venv\Scripts\activate`
3. Install packages with `pip install -r requirements.txt`

### MacOS/Linux

1. Setup virtual environment with `python -m venv .venv`
2. Activate environment `source .venv/bin/activate`
3. Install packages with `pip install -r requirements.txt`

### Setup pre-commit

1. Install pre-commit `pip install pre-commit`
2. Setup pre-commit `pre-commit install`

## Running locally

With the `.venv` environment activated, dbt can be run locally from the [dbt](dbt/) directory. This will be required to be done at least once before you can run the streamlit app locally.

     cd dbt
     dbt run

Once dbt has been run at least once, you can then start up the streamlit app via:

    streamlit run streamlit_app.py
