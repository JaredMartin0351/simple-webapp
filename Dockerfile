#use python base image
FROM python:3.7-alpine

#workdirectory
WORKDIR /code

#env variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST -0.0.0.0

#add dependencies

COPY requirements.txt requirements.txt
#install dependencies
RUN pip install -r requirements.txt
#expose port
EXPOSE 3000

#copy in source code
COPY . ./

#get entry point
CMD ["flask", "run"]