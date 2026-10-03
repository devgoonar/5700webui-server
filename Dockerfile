# Use a lightweight Python base image
FROM python:3.12-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy your program into the container
COPY app.py /app/app.py

# Run the program when the container starts
CMD ["python", "app.py"]

