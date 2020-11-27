FROM python:3.7-slim-buster
RUN apt update -y
RUN apt install python3-dev libffi-dev gcc -y && pip3 install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt 
EXPOSE 5000
ENTRYPOINT [ "python3" ] 
CMD [ "run.py" ]
