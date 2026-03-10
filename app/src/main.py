from fastapi import FastAPI
from typing import Dict


print("Starting CI/CD Lab Application...")
app = FastAPI()


@app.get("/")
def read_root() -> Dict[str, str]:
    return {"message": "CI/CD Active", "version": "1.0.0"}


@app.get("/health")
def health_check() -> Dict[str, str]:
    return {"status": "healthy", "version": "1.0.0"}
