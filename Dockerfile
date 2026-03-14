# Use a slim Python 3.11 image for a modern and lightweight footprint
FROM python:3.11-slim-bookworm

# Set the working directory
WORKDIR /app

# Install system dependencies
# Bookworm is the newer Debian stable, offering better security and package support
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy only the requirements file first to leverage Docker layer caching
# This prevents reinstalling all packages when you change source code
COPY requirements.txt .

# Install dependencies with --no-cache-dir to keep the image size small
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source code
COPY . .

# Set environment variables for better Python behavior in containers
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app

# Expose the Flask port
EXPOSE 5000

# Command to run the application
# Note: Use Gunicorn for production instead of 'python app.py'
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]