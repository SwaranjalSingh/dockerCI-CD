FROM python:3.11.3-alpine

#RUN apk add --no-cache curl
# ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8000

#HEALTHCHECK --interval=30s --timeout=30s --start-period=30s --retries=3 \

#CMD curl -f http://localhost:8000 || exit 1

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

# ####
# pull the official base image
# FROM python:3.11.3-alpine

# # set work directory
# WORKDIR ./clockbox

# # set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # install dependencies
# RUN pip install --upgrade pip 
# COPY ./clockbox/requirements.txt requirements.txt
# # RUN  pip install -r requirements.txt

# # copy project
# COPY . /app

# RUN  pip install -r requirements.txt

# EXPOSE 8000

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]