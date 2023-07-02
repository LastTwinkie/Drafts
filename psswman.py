mast_pwd = input("Enter password.")

def view():
    print("See")
def add():
    name = input('ID:')
    pwd = input('Password:')

    with open('pssw.txt', 'a') as f:
        f.write(name + "|" + pwd)

mode = input("View or Add(view, add)?Press q to quit")

if mode == "q":
    break
if mode == "view":
    view()
elif mode == "add":
    add()
else:
    print("Invalid option.")
    continue
