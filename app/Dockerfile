FROM python:3.11-slim

# Set working directory
WORKDIR /app

# 1. Install dependencies first (for caching)
# We copy only the config file to leverage Docker layer caching
COPY pyproject.toml .


# We create a dummy src directory so pip can 'install' the project 
# metadata without needing the full code yet
RUN mkdir src && pip install --no-cache-dir .


# 2. Copy the actual source code
COPY . .


# 3. Re-install to ensure the code is linked correctly
# Using '.' installs the current directory based on pyproject.toml
RUN pip install --no-cache-dir .


# Expose FastAPI's default port
EXPOSE 80


# Use uvicorn to run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
