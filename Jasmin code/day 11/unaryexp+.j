; prints +1

.class public HelloWorld
.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 1

	getstatic java/lang/System/out Ljava/io/PrintStream;
	iconst_1
	invokevirtual java/io/PrintStream/println(I)V
	return

.end method
