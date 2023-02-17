# syntax=docker/dockerfile:1
FROM buildpack-deps:bullseye
WORKDIR .
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install --upgrade pip install
COPY requirements.txt requirements.txt
#RUN apk add --no-cache git
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
