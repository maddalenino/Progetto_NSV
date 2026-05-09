from flask import Flask
import redis

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379, socket_connect_timeout=2)

@app.route('/')
def index():
    n = cache.incr('visits')
    return f'Ciao! Questa pagina è stata visitata {n} volte.\n'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)


