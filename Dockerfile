FROM python:3.9.5
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask","app.py"]