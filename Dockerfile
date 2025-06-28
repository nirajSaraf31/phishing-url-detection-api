# Use a minimal base image with Python
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy everything inside app/ into the image
COPY ./app /app

ENV PYTHONDONTWRITEBYTECODE=1

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose FastAPI's default port
EXPOSE 8000

# Run the FastAPI app using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
