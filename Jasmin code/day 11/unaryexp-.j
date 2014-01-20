; prints -1

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
	ldc 0
	ldc 1
	isub
	invokevirtual java/io/PrintStream/println(I)V
	return

.end method
