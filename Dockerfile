FROM python:3.12.0a5-slim

# Install dependencies.
ADD requirements.txt /requirements.txt
RUN apt-get update && \
    apt-get install -y libxml2-dev libxslt-dev && \
    rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt

# Copy code.
COPY . .

CMD python /main.py
