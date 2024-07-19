FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

RUN mkdir /app/static

EXPOSE 5000

VOLUME ["/app/static"]

CMD ["python", "app.py"]