# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy backend and frontend into container
COPY backend /app/backend
COPY frontend /app/frontend
#
# Install dependencies directly (no requirements.txt)
RUN pip install --no-cache-dir \
    Flask \
    Flask-SQLAlchemy \
    PyMySQL \
    Werkzeug

# Expose Flask port
EXPOSE 5001

# Run Flask app
CMD ["python", "/app/backend/app.py"]

