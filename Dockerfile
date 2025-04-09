

FROM python:3.9-slim


RUN apt-get update && apt-get install -y \
    python3-tk \
    tcl-dev \
    tk-dev \
    libx11-6 \
    libxext6 \
    libxss1 \
    libgl1-mesa-glx \
    libxtst6 \
    default-libmysqlclient-dev \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*


ENV DISPLAY=:0


WORKDIR /app


COPY src/ /app/
COPY requirements.txt .
COPY wait-for-db.sh .


RUN pip install --no-cache-dir -r requirements.txt


RUN chmod +x wait-for-db.sh


CMD ["./wait-for-db.sh", "db", "python", "GUI.py"]