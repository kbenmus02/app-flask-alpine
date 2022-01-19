# start by pulling the python image
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y
RUN apt-get install -y \
    python3 \
    python3-pip
    
RUN   pip install --upgrade pip 
 
# copy the requirements file into the image
#COPY ./requirements_flask.txt /app/requirements_flask.txt
COPY ./requirements_flask.txt /app/

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements_flask.txt

# copy every content from the local file to the image
COPY . /app

# configure the container to run in an executed manner
#ENTRYPOINT [ "python", "app.py" ]

