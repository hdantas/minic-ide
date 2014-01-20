; foo(int a){int b; b = 2; return a * b;}

.class public HelloWorld
.super java/lang/Object


.method public <init>()V
.limit stack 1
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  return
.end method

.method public static foo(I)I
.limit stack 2
.limit locals 2
  ldc 2
  istore 1
  iload 0
  iload 1
  imul
  ireturn
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 2
.limit locals 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc 4
  invokestatic HelloWorld/foo(I)I
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method
