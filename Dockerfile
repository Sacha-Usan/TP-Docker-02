FROM python:2.7-alpine
WORKDIR /app
COPY app.py /app/
COPY requirements.txt /
COPY templates/* /app/templates/
COPY static/* /app/static
RUN pip install -r /requirements.txt
EXPOSE 5000
ENTRYPOINT ["python","app.py"]
