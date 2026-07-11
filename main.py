from fastapi import FastAPI
from routes.ruben_endpoints import router

app = FastAPI(
    title="ForgeFit API",
    version="1.0.0",
    description="API for the ForgeFit workout planner."
)

app.include_router(router)


@app.get("/")
def root():
    return {
        "message": "ForgeFit API is running!"
    }