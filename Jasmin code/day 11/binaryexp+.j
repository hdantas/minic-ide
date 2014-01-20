; prints 1 + 2

.class public HelloWorld
.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  
	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc 1
	ldc 2
	iadd
	invokevirtual java/io/PrintStream/println(I)V
	return
.end method
