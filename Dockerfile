# Use the official Python image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]
