# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 6200

# Enable Python code printing/logging and set timezone
ENV PYTHONUNBUFFERED=1
ENV TZ=Asia/Kolkata

# Command to run the application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:6200", "app:app"]
