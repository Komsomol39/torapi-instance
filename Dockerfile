FROM python:3.11-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/Ryuk-me/Torrent-Api-py /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8009
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8009"]
