; prints false (ie 1 && 0)

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
  ldc 1
  ifeq false
  ldc 0
  ifeq false
  iconst_1
  goto end
false :
  iconst_0
end :
  invokevirtual java/io/PrintStream/println(I)V
  return

.end method
