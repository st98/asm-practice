# asm-practice
アセンブリ修行。練習で書いた何かを投げます。

## ファイルの説明
- [happy-new-year.s](happy-new-year.s)
 - 初めて書いた何か。
 - `"Happy New Year!\r\n(^_^)\r\n"` を出力するだけ。
- [hello.s](hello.s)
 - `write(1, "Hello, world!\n", 14)` して `exit(0)` する。
 - `nasm -f elf hello.s` して `ld hello.o -o hello` すると `./hello` で動かせる。
