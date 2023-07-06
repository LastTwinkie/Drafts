#!/usr/bin/env python3

mpwd = input("What is the password?")

def view():
    print("See")
    
    with open('pssw.txt', 'r') as f:
        for line in f.readlines():
            print(line)
def add():
    name = input('ID:')
    pwd = input('Password:')
    print("Add complete.")

    with open('pssw.txt', 'a') as f:
        f.write(name + "|" + pwd + "\n")

def edit():
    print("Can't add yet.")

while True:
    mode = input("View, Add or Edit (v, a, e)? Press q to quit.")

    if mode == "q":
        break
    if mode == "v":
        view()
    if mode == "a":
        add()
    elif mode =="e":
        edit()
    else:
        print("Invalid option.")
        continue
