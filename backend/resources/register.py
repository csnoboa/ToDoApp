from flask_restful import Resource
from flask import request

class Register(Resource):
    def get(self):
        return { "message" : "getting user" }
    def post(self):
        #get username, email, password
        data = request.get_json()

        username = data['username']
        email = data['email']
        password = data['password']

        print(username)
        print(email)
        print(password)
        
        #check if username exists
        #check if the email exists
        #create a user


        return{ "message" : "registering user {}...".format(username) }
