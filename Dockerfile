FROM python:3.10-alpine

RUN apk add --no-cache gcc musl-dev libffi-dev

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "ppt_mcp_server.py", "--transport", "http", "--port", "8000"]
