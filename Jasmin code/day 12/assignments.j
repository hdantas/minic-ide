; int a; main(int b; a = 2; b = 4; print(a * b);)

.class public HelloWorld
.super java/lang/Object

.field private static a I

.method public <init>()V
.limit stack 1
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 3
  ldc 2
  putstatic HelloWorld/a I
  ldc 4
  istore_0
  getstatic java/lang/System/out Ljava/io/PrintStream;
  getstatic HelloWorld/a I
  iload_0
  imul
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method
