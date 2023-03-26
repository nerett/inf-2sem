import sys
data = sys.stdin.buffer.read()
data = data.replace( b'\xd9\x45\x08\xd8\xc1', b'\xd9\xeb\xde\xc9\x90' )
sys.stdout.buffer.write( data )
