FROM python:3.8-slim

# Defina o diretório de trabalho para o aplicativo Flask
WORKDIR /app/flask_app

# Copie os requisitos do aplicativo Flask e instale-os
COPY app/flask_app/requirements.txt /app/flask_app/requirements.txt
RUN pip install -r /app/flask_app/requirements.txt

# Copie o código-fonte do aplicativo Flask
COPY app/flask_app/ /app/flask_app/

# Defina o diretório de trabalho para o aplicativo FastAPI
WORKDIR /app/fastapi_app

# Copie os requisitos do aplicativo FastAPI e instale-os
COPY app/fastapi_app/requirements.txt /app/fastapi_app/requirements.txt
RUN pip install -r /app/fastapi_app/requirements.txt

# Copie o código-fonte do aplicativo FastAPI
COPY app/fastapi_app/ /app/fastapi_app/

# Inicie os aplicativos Flask e FastAPI
CMD ["sh", "-c", "python /app/flask_app/app.py & uvicorn main:app --host 0.0.0.0 --port 8000"]