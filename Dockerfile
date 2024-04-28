FROM python:3.9-alpine

WORKDIR /app

COPY app.py ./
COPY requirements.txt ./
COPY .env ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
