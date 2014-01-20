; prints 0 (ie !3)
; false = 0, true != 0
  
.class public HelloWorld
.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 2

	getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc 3
  ifeq true
  iconst_0
  goto end
true :
  iconst_1
end :
	invokevirtual java/io/PrintStream/println(I)V
	return

.end method
