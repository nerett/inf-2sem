with open('antideb', 'rb') as inf:
    ss = inf.read()
with open('antideb_patched', 'wb') as out:
    out.write(ss.replace(
        b'\x48\x83\xf8\xff\x75\x14',
        b'\x48\x83\xf8\xff\x74\x14'
    ))
