from fastapi import APIRouter

health_check = APIRouter()


@health_check.get('/health_check/', tags=['health'])
def check() -> str:
    """Проверка работоспособности."""
    return 'OK'
