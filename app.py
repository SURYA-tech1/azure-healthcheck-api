from fastapi import FastAPI
import os

app = FastAPI(title="Azure Healthcheck API", version="1.0.0")

@app.get("/")
def read_root():
    return {
        "status": "healthy",
        "environment": os.getenv("APP_ENV", "dev"),
        "version": "1.0.0"
    }

@app.get("/healthz")
def health_probe():
    return {"status": "ok"}
