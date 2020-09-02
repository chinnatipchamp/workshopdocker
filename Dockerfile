FROM python:3.6-alpine
# RUN echo First Build Docker images
WORKDIR /app
ADD . /app/www
COPY . .
RUN pip3 -V
RUN pip3 install flask
RUN python3 -V
EXPOSE 5002
CMD ["python3","server.py"]