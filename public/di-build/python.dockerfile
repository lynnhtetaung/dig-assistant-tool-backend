# Base Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Default command to run the Python application
CMD ["python", "app.py"] 
