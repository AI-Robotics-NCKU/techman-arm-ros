import socket
import struct

def bytes_to_float_array(b):
    return struct.unpack('f'*(len(b)//4), b)


bind_ip = "192.168.1.202"
bind_port = 8080


server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((bind_ip,bind_port))

server.listen(5)

print("[*] Listening on %s:%d " % (bind_ip,bind_port)) 

while True:
    client,addr = server.accept()
    print ('Connected by ', addr)

    while True:
        data = client.recv(1024)
        # print ("Client recv data : %s " % (data))
        print(bytes_to_float_array(data))
        b = list(bytes_to_float_array(data))
       
