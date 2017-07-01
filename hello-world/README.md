## アセンブル
nasm -f macho hello.asm

## リンク
ld -o hello -e main hello.o

## 実行
./hello
