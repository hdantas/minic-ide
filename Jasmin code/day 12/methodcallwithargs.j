; foo(4.2)

.class public HelloWorld
.super java/lang/Object


.method public <init>()V
.limit stack 1
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  return
.end method

.method static foo(F)F
.limit locals 1
  fload_0
  freturn
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc 4.2
  invokestatic HelloWorld/foo(F)F
  invokevirtual java/io/PrintStream/println(F)V
  return
.end method
