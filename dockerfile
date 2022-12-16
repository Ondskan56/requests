FROM python:3.9.15-alpine3.16
WORKDIR /app 
COPY . .
RUN "python3 -m pip install -r requirments.txt"
CMD [ "python" ,"http_e.py"]
CMD [ "python" ,"pytest resttest.py"]
