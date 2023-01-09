from fastapi import FastAPI

from api import api


app = FastAPI(title='conspect', openapi_url='/openapi.json', docs_url='/swagger', redoc_url='/redoc')
app.include_router(api)
