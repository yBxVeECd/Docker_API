# Dockerfile, Image, Container
FROM python:3.11

WORKDIR /code

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./app  /code/app

EXPOSE 5000

# Run your application command
CMD ["python", "/code/app/flask_api.py"]