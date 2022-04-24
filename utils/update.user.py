import json
import requests
from pprint import pprint

URL = "http://127.0.0.1:5000/users"



def update_user(user_data, user_id):
    url = "%s/%s/" % (URL, user_id)
    response = requests.put(url, json=user_data)
    if response.status_code == 204:
        print("Successfully updated user.")
    else:
        print("SOmething went wrong while trying to update user.")


def get_user(user_id):
    url = "%s/%s/" % (URL, user_id)
    response = requests.get(url)
    if response.status_code == 200:
        print("User: ")
        pprint(response.json())
        return response.json().get("user")[0]
    else:
        print("Something went wrong while trying to retreive the user")
        return ""


if __name__ == "__main__":
    user_id = input("Type in user's id:")
    target_user = get_user(user_id)
    first_name = input("Thype in first name (or leave blank)") 
    last_name = input("Thype in the new last name")
    hobbies = input("Type in the new hobbies")
    if first_name:
        target_user["first_name"] = first_name 
    if last_name:
        target_user["last_name"] = last_name  
    if hobbies:
        target_user["hobbies"] = hobbies
    update_user(target_user, user_id)
    option = input("would you like to see the updated user? [y/n]")
    if option == "y" or option == "y":
        get_user(user_id)

