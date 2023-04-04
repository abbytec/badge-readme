FROM python:3.12.0a5-slim

# Install dependencies.
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy code.
COPY . .

CMD python3 -m unittest discover -v -s tests
