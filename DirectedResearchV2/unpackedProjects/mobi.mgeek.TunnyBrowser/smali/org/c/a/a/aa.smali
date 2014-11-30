.class Lorg/c/a/a/aa;
.super Lorg/c/a/d/b/a;
.source "SocketConnector.java"

# interfaces
.implements Lorg/c/a/a/m;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Lorg/c/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/c/a/a/aa;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/aa;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    .line 49
    return-void
.end method

.method static synthetic a()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/c/a/a/aa;->a:Lorg/c/a/d/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/c/a/a/o;)V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/c/a/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->i()Lorg/c/a/d/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/d/f/b;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 57
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 60
    invoke-virtual {p1}, Lorg/c/a/a/o;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/o;->g()Lorg/c/a/a/f;

    move-result-object v1

    .line 61
    :goto_1
    invoke-virtual {v1}, Lorg/c/a/a/f;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    invoke-virtual {v2}, Lorg/c/a/a/k;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 63
    new-instance v1, Lorg/c/a/c/a/a;

    invoke-direct {v1, v0}, Lorg/c/a/c/a/a;-><init>(Ljava/net/Socket;)V

    .line 65
    new-instance v0, Lorg/c/a/a/h;

    iget-object v2, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    invoke-virtual {v2}, Lorg/c/a/a/k;->n()Lorg/c/a/c/l;

    move-result-object v2

    iget-object v3, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    invoke-virtual {v3}, Lorg/c/a/a/k;->o()Lorg/c/a/c/l;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/c/a/a/h;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V

    .line 66
    invoke-virtual {v0, p1}, Lorg/c/a/a/a;->a(Lorg/c/a/a/o;)V

    .line 67
    invoke-virtual {p1, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;)V

    .line 68
    iget-object v1, p0, Lorg/c/a/a/aa;->b:Lorg/c/a/a/k;

    invoke-virtual {v1}, Lorg/c/a/a/k;->b()Lorg/c/a/d/g/c;

    move-result-object v1

    new-instance v2, Lorg/c/a/a/ab;

    invoke-direct {v2, p0, v0, p1}, Lorg/c/a/a/ab;-><init>(Lorg/c/a/a/aa;Lorg/c/a/a/a;Lorg/c/a/a/o;)V

    invoke-interface {v1, v2}, Lorg/c/a/d/g/c;->a(Ljava/lang/Runnable;)Z

    .line 110
    return-void

    .line 53
    :cond_0
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v1

    goto :goto_1
.end method
