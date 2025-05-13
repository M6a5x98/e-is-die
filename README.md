# e-is-lock
A little executable that locks your computer and rickroll you each time you press the key 'e'
<br>
That's it
## Compilation

To compile this program, you need [`NASM`](https://nasm.us/pub/nasm/releasebuilds/?C=M;O=D) and [`GoLink`](http://www.godevtool.com/#linker)
```batch
nasm -fwin64 e-is-lock.asm -o e-is-lock.obj
golink e-is-lock.obj /entry main /console kernel32.dll user32.dll
```