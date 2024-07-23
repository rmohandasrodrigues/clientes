Passos para rodar a aplicação localmente:

1 - Configurar e ativar um ambiente virtual:
python -m venv venv
source venv/bin/activate

2 - Instalar dependências do Flask:
pip install -r app/flask_app/requirements.txt

3 - Instalar dependências do FastAPI:
pip install -r app/fastapi_app/requirements.txt

4 - Rodar a aplicação Flask:
cd app/flask_app
flask run

O Flask iniciará um servidor de desenvolvimento na porta 5000 por padrão.

5 - Rodar a aplicação FastAPI:
cd app/fastapi_app
uvicorn main:app --host 0.0.0.0 --port 8000

##################################################################################################################

1 - Testando a Aplicação Localmente:
Testar o módulo Flask (Cadastro de Clientes):

Enviar uma requisição POST para http://127.0.0.1:5000/clientes com o seguinte corpo JSON:
{
    "nome": "Nome Completo",
    "endereco": "http://example.com",
    "email": "email@example.com"
}

Enviar uma requisição GET para http://127.0.0.1:5000/clientes para ver a lista de clientes cadastrados.

2 - Testar o módulo FastAPI (JWT):

Enviar uma requisição POST para http://127.0.0.1:8000/token com o seguinte corpo JSON:

{
    "cliente_id": "o-client-id",
    "cliente_secret": "o-client-secret",
    "nome": "Nome Completo",
    "endereco": "http://example.com",
    "email": "email@example.com",
    "data_inclusao": "a-data-de-inclusao"
}
###################################################################################################################

