#!/usr/bin/env python
import paramiko
host = "van-gogh.ece.mcgill.ca"                    #hard-coded
port = 22
transport = paramiko.Transport((host, port))

password = "wtfwtf01"                #hard-coded
username = "an.jiang@mail.mcgill.ca"                #hard-coded
transport.connect(username = username, password = password)

sftp = paramiko.SFTPClient.from_transport(transport)

import sys
path = './temp/Thesis.pdf'
localpath = '/Users/John/Documents/Neyman-Pearson/thesis/Thesis.pdf'
sftp.put(localpath, path)
sftp.close()
transport.close()
print 'Upload done.'
import subprocess
comm = "./printfile.sh " + sys.argv[1] + " " + sys.argv[2];
print comm
subprocess.call(comm, shell = True)
