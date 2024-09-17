FROM python:3.8
WORKDIR /APLICACAO
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
EXPOSE 5001
CMD [ "python", "app.py" ]