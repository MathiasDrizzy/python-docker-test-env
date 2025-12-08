from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {
        "message": "Hola desde Python + Docker + VSCode + Git + Oh My Posh 😎"
    }

@app.get("/health")
def health():
    return {"status": "ok"}
