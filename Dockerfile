FROM python:3.9.10
LABEL maintainer="oleksiihead"

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY movies.json main.py ./

CMD ["python", "main.py"]
