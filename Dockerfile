# Base image
FROM python:3.9-slim-buster

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the source code
COPY . /app

# Expose the port
EXPOSE 8000

# Start the server
ENTRYPOINT ["sh" , "scripts/script.sh"]
