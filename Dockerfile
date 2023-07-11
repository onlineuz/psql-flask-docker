FROM python:3.9-alpine
WORKDIR /app
COPY . .

RUN python3 -m venv venv           #for docker container no need
RUN source ./venv/bin/activate     #for docker container no need
RUN pip install flask 
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install psycopg2-binary

CMD  ["flask","run","--host=0.0.0.0"]
