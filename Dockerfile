FROM python:3.11-slim
WORKDIR /app

# Copy everything in repo (just Dockerfile + app.py)
COPY . /app

RUN pip install --no-cache-dir \
    Flask \
    Flask-SQLAlchemy \
    PyMySQL \
    Werkzeug

EXPOSE 5001
CMD ["python", "/app/app.py"]

