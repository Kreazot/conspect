from fastapi import APIRouter

from .health_check import health_check

api = APIRouter()
api.include_router(health_check)
