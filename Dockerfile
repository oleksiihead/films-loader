FROM python:3.9.10
LABEL MAINTAINER oleksiihead

WORKDIR /app 

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY movies.json main.py ./

CMD ["python", "main.py"]
