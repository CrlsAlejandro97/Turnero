FROM python
WORKDIR /app
COPY . .
RUN pip install -r requeriments.txt
ENV DB_NAME=$(cat .env | grep DB_NAME | cut -d '=' -f2)
ENV DB_USER=$(cat .env | grep DB_USER | cut -d '=' -f2)
ENV DB_PASSWORD=$(cat .env | grep DB_PASSWORD | cut -d '=' -f2)
ENV DB_HOST=$(cat .env | grep DB_HOST | cut -d '=' -f2)
ENV DB_PORT=$(cat .env | grep DB_PORT | cut -d '=' -f2)

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
