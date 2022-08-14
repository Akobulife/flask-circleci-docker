# set the Base Image from which your image will be built on
FROM python:3.8 
# create a directory called flask-circleci-docker in root. 
# This directory will contain the code which currently resides in /flask-circleci-docker/
RUN mkdir /flask-circleci-docker

# make /flask-circleci-docker the working directory
WORKDIR /flask-circleci-docker

# copy your /flask-circleci-docker project directory to the directory you just created
COPY . /flask-circleci-docker

RUN pip install -r requirements.txt

EXPOSE 5000

CMD python main.py