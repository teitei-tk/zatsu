import os
import jwt
import datetime

now = int(datetime.datetime.utcnow())
secret = os.environ.get('GITHUB_SECRET')

payload = {
    'iat': now,
    'exp': now + (10 * 60),  # 10 min max
    'iss': os.environ.get('APP_ID')
}

result = jwt.encode(payload, secret)
print(result)