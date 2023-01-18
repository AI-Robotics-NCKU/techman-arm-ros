import threading
import time
from getkey import getkey, keys

text = "1"

def input_thread():
    while True:
        global text
        text = getkey()
        if text == "q":
            break

def print_thread():
    while True:
        global text
        print(text)
        time.sleep(1)

input_thread = threading.Thread(target=input_thread)
print_thread = threading.Thread(target=print_thread)

input_thread.start()
print_thread.start()

input_thread.join()
print_thread.join()