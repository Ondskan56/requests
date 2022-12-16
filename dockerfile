FROM python:3.9.15-alpine3.16
WORKDIR /app 
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD [ "python" ,"http_e.py"]
CMD [ "python" ,"pytest resttest.py"]
