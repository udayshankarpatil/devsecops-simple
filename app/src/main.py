from fastapi import FastAPI
from typing import Dict

app = FastAPI()

print("Starting CI/CD Lab Application...")

@app.get("/")
def read_root() -> Dict[str, str]:
    return {"message": "CI/CD Lab Active", "version": "1.0.0"}

@app.get("/health")
def health_check() -> Dict[str, str]:
    return {"status": "healthy"}
