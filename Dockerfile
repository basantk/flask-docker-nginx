FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install Werkzeug==1.*

RUN pip install --upgrade flask werkzeug

COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]

