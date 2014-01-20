; a = 0; while(a < 3) print(a++)

.class public HelloWorld
.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 1
  ldc 0
  istore_0
  goto cond
while :
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload_0
  invokevirtual java/io/PrintStream/println(I)V
  iinc 0 1
cond :
  iload_0
  ldc 3
  if_icmplt while
end :
	return

.end method
