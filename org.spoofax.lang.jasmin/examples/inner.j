.class HelloWorld/inner
.super java/lang/Object

.field final this LHelloWorld;

.field private a I

.method private <init>(LHelloWorld;)V
.limit stack 2
.limit locals 2
    aload_0
    aload_1
    putfield HelloWorld/inner/this LHelloWorld;
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method <init>(LHelloWorld;LHelloWorld;)V
.limit stack 2
.limit locals 3
    aload_0
    aload_1
    invokenonvirtual HelloWorld/inner/<init>(LHelloWorld;)V
    return
.end method

.method static get_a(LHelloWorld/inner;)I
.limit stack 1
.limit locals 1
    aload_0
    getfield HelloWorld/inner/a I
    ireturn
.end method

.method static set_a(LHelloWorld/inner;I)I
.limit stack 3
.limit locals 2
    aload_0
    iload_1
    dup_x1
    putfield HelloWorld/inner/a I
    ireturn
.end method