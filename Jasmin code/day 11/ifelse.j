; if(1) print(1); else print(0)

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
	ifeq else
	ldc 1
	goto end
else:
  ldc 0
end:
	invokevirtual java/io/PrintStream/println(I)V
	return

.end method
