from fastapi import FastAPI
from routes.ruben_endpoints import router
from fastapi.middleware.cors import CORSMiddleware

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

app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:63342",
        "http://127.0.0.1:63342",
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)