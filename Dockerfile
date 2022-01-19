# start by pulling the python image
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y
RUN apt-get install -y \
    python3 \
    python3-pip

RUN   pip install --upgrade pip 
 
# copy every content from the local file to the image
COPY . /app

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r /app/cours03_flask_file/requirements_flask.txt

# configure the container to run in an executed manner
ENTRYPOINT [ "python3", "cours03_flask_file/app.py" ]

