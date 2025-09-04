from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.api.v1.auth import router as auth_router

app = FastAPI(
    title="Face Recognition API",
    description="Authentication API with face recognition",
    version="1.0.0"
)

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include routers
app.include_router(auth_router, prefix="/api/v1/auth", tags=["authentication"])

@app.get("/")
async def root():
    return {"message": "Face Recognition API is running!"}

@app.get("/health")
async def health_check():
    return {"status": "healthy"}