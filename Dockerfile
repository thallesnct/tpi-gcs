FROM python:3.9

RUN mkdir /app

WORKDIR /app

COPY ./requirements.txt .

RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED 1

ENV PYTHONPATH /app

COPY . /app

EXPOSE 3030

CMD ["python", "./src/main.py"]