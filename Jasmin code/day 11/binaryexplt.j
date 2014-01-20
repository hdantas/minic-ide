; prints 2 < 4
  
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
	ldc 2
	ldc 4
  if_icmpge false
  iconst_1
  goto end
false :
  iconst_0
end :
	invokevirtual java/io/PrintStream/println(I)V
	return
.end method
