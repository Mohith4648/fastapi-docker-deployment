from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Ausweg Task: FastAPI is Running", "devops": "Success"}