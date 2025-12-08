# Imagen base de Python (versión 3.14 como ejemplo)
FROM python:3.14-slim

# Evitar buffering en logs
ENV PYTHONUNBUFFERED=1

# Crear directorio de trabajo
WORKDIR /app

# Copiar requirements e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código
COPY app ./app

# Exponer puerto
EXPOSE 8000

# Comando para levantar la API
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
