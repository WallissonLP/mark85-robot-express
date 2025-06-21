from robot.api.deco import keyword
from pymongo import MongoClient
from dotenv import load_dotenv
import bcrypt
import os

load_dotenv()  # Carrega variáveis do arquivo .env

mongo_uri = os.getenv("MONGO_URI")
client = MongoClient(mongo_uri)

db = client['markdb']

@keyword('Clear user from database')
def clear_user(user_email):
        users = db['users']
        tasks = db['tasks']

        u = users.find_one({'email': user_email})

        if (u):
                tasks.delete_many({'user': u['_id']})
                users.delete_many({'email': user_email})

@keyword('Remove user from database')
def remove_user(email):
        users = db['users']
        users.delete_many({'email': email})
        print('removing user by '+ email)

@keyword('Insert user from database')
def insert_user(user):

        hash_pass = bcrypt.hashpw(user['password'].encode('utf-8'), bcrypt.gensalt(8))
    
        doc = {
                'name': user['name'],
                'email': user['email'],
                'password': hash_pass
        }

        users = db['users']
        users.insert_one(doc)
        print(user)