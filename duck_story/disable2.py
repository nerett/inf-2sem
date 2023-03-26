with open('source', 'rb') as inf:
    ss = inf.read()
with open('cracked', 'wb') as out:
    out.write(ss.replace(
        b'\xe1\xfe\xff\x54\x00\x00\x00\x90\x00\x20',
        b'\x1f\x20\x03\xd5\x00\x00\x00\x90\x00\x20'
    ))

