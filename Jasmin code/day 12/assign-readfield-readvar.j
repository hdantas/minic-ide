; struct inner{int a;};
; 
; struct inner globalobject;
; 
; int foo(int a, float b) {
;   struct inner localobject;
;   localobject.a = 3;
;  
;   return localobject.a;
; }
; 
; foo(1, 4.2)

.class public HelloWorld
.super java/lang/Object

.field private static globalobject LHelloWorld/inner;

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    aload_0
    new HelloWorld/inner
    dup
    aload_0
    aconst_null
    invokenonvirtual HelloWorld/inner/<init>(LHelloWorld;LHelloWorld;)V
    putfield HelloWorld/globalobject LHelloWorld/inner;
    return
.end method

.method public static foo(IF)I
    .limit stack 4
    new HelloWorld/inner
    dup
    aload_0
    aconst_null
    invokenonvirtual HelloWorld/inner/<init>(LHelloWorld;LHelloWorld;)V
    astore 3
    aload 3
    ldc 3
    invokestatic HelloWorld/inner/set_a(LHelloWorld/inner;I)I
    pop
    aload 3
    invokestatic HelloWorld/inner/get_a(LHelloWorld/inner;)I
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 2
    new HelloWorld
	  dup
	  invokenonvirtual HelloWorld/<init>()V
	  astore_1
	  getstatic java/lang/System/out Ljava/io/PrintStream;
	  aload_1
    ldc 1
    ldc 4.2
    invokestatic HelloWorld/foo(IF)I
    invokevirtual java/io/PrintStream/println(I)V
    return
.end method