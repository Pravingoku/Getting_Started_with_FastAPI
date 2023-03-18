FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD uvicorn main:app --host 0.0.0.0 --port 8000 --header server:almightypush