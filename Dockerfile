FROM python:3.9-slim

WORKDIR /app

# Direct install to ensure they are present
RUN pip install fastapi uvicorn

COPY . .

# Use python3 -m to run it directly
CMD ["python3", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]