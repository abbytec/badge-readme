FROM python:latest

# Install dependencies.
RUN apt-get update && \
    apt-get install -y libxml2-dev libxslt-dev && \
    rm -rf /var/lib/apt/lists/*
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy code.
COPY . .

CMD python3 -m unittest discover -v -s tests
