;; Produced by JasminVisitor (BCEL)
;; http://bcel.sourceforge.net/
;; Tue Jan 14 16:14:16 CET 2014

.source HelloWorld.java
.class public HelloWorld
.super java/lang/Object

.field static array [I
.field static notarray I

.method public <init>()V
.limit stack 1
.limit locals 1
.var 0 is this LHelloWorld; from Label0 to Label1

Label0:
  aload_0
  invokespecial java/lang/Object/<init>()V
Label1:
  return

.end method

.method public static main([Ljava/lang/String;)V
.limit stack 2
.limit locals 1
.var 0 is arg0 [Ljava/lang/String; from Label0 to Label1

Label0:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  getstatic HelloWorld/notarray I
  length
  invokevirtual java/io/PrintStream/println(I)V
Label1:
  return

.end method

.method static <clinit>()V
.limit stack 1
.limit locals 0

  iconst_5
  newarray int
  putstatic HelloWorld/array [I
  return

.end method
