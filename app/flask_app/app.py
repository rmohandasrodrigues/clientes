from flask import Flask, request, jsonify
from datetime import datetime
import uuid

app = Flask(__name__)
clientes = []

@app.route('/clientes/', methods=['POST'])
def cadastrar_clientes():
    data = request.json
    cliente_id = str(uuid.uuid4())
    cliente_secret = str(uuid.uuid4())
    data_inclusao = datetime.now().isoformat()

    cliente = {
        'cliente_id': cliente_id,
        'cliente_secret': cliente_secret,
        'nome': data['nome'],
        'endereco': data['endereco'],
        'email': data['email'],
        'data_inclusao': data_inclusao
    }

    clientes.append(cliente)
    return jsonify(cliente), 201


@app.route('/clientes/', methods=['GET'])
def listar_clientes():
    return jsonify(clientes), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)