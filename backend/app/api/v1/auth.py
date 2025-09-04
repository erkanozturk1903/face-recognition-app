from fastapi import APIRouter, HTTPException, status, Depends
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from pydantic import BaseModel, EmailStr
from typing import Optional
from app.core.auth import create_access_token, verify_token, get_password_hash, verify_password

router = APIRouter()
security = HTTPBearer()

# Pydantic models
class UserRegister(BaseModel):
    email: EmailStr
    password: str
    display_name: Optional[str] = None

class UserLogin(BaseModel):
    email: EmailStr
    password: str

class Token(BaseModel):
    access_token: str
    token_type: str

class UserResponse(BaseModel):
    id: str
    email: str
    display_name: Optional[str]

@router.post("/register", response_model=Token)
async def register(user: UserRegister):
    # Şimdilik basit bir implementation - sonra Supabase ile entegre edeceğiz
    return {
        "access_token": create_access_token(data={"sub": user.email}),
        "token_type": "bearer"
    }

@router.post("/login", response_model=Token)
async def login(user: UserLogin):
    # Şimdilik basit bir implementation - sonra Supabase ile entegre edeceğiz
    return {
        "access_token": create_access_token(data={"sub": user.email}),
        "token_type": "bearer"
    }

@router.get("/me", response_model=UserResponse)
async def get_current_user(credentials: HTTPAuthorizationCredentials = Depends(security)):
    user_email = verify_token(credentials.credentials)
    return {
        "id": "test-id",
        "email": user_email,
        "display_name": "Test User"
    }