.class public Lorg/c/a/e/o;
.super Lorg/c/a/d/b/b;
.source "WebSocketClientFactory.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;

.field private static final b:Lorg/c/a/c/o;


# instance fields
.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/c/a/e/t;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/c/a/d/f/b;

.field private final f:Lorg/c/a/d/g/c;

.field private final g:Lorg/c/a/e/s;

.field private h:Lorg/c/a/e/b;

.field private i:Lorg/c/a/e/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lorg/c/a/e/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/e/o;->a:Lorg/c/a/d/c/d;

    .line 72
    new-instance v0, Lorg/c/a/c/p;

    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {v0, v1}, Lorg/c/a/c/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/e/o;->b:Lorg/c/a/c/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/e/o;-><init>(Lorg/c/a/d/g/c;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/c/a/d/g/c;)V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lorg/c/a/e/c;

    invoke-direct {v0}, Lorg/c/a/e/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/c/a/e/o;-><init>(Lorg/c/a/d/g/c;Lorg/c/a/e/b;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/c/a/d/g/c;Lorg/c/a/e/b;)V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lorg/c/a/e/o;-><init>(Lorg/c/a/d/g/c;Lorg/c/a/e/b;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/c/a/d/g/c;Lorg/c/a/e/b;I)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/c/a/d/b/b;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/e/o;->c:Ljava/util/Queue;

    .line 74
    new-instance v0, Lorg/c/a/d/f/b;

    invoke-direct {v0}, Lorg/c/a/d/f/b;-><init>()V

    iput-object v0, p0, Lorg/c/a/e/o;->d:Lorg/c/a/d/f/b;

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance p1, Lorg/c/a/d/g/a;

    invoke-direct {p1}, Lorg/c/a/d/g/a;-><init>()V

    .line 126
    :cond_0
    iput-object p1, p0, Lorg/c/a/e/o;->f:Lorg/c/a/d/g/c;

    .line 127
    iget-object v0, p0, Lorg/c/a/e/o;->f:Lorg/c/a/d/g/c;

    invoke-virtual {p0, v0}, Lorg/c/a/e/o;->b(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lorg/c/a/e/k;

    invoke-direct {v0, p3}, Lorg/c/a/e/k;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/e/o;->i:Lorg/c/a/e/k;

    .line 130
    iget-object v0, p0, Lorg/c/a/e/o;->i:Lorg/c/a/e/k;

    invoke-virtual {p0, v0}, Lorg/c/a/e/o;->b(Ljava/lang/Object;)Z

    .line 132
    iput-object p2, p0, Lorg/c/a/e/o;->h:Lorg/c/a/e/b;

    .line 133
    iget-object v0, p0, Lorg/c/a/e/o;->h:Lorg/c/a/e/b;

    invoke-virtual {p0, v0}, Lorg/c/a/e/o;->b(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lorg/c/a/e/o;->a()Lorg/c/a/e/s;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/e/o;->g:Lorg/c/a/e/s;

    .line 136
    iget-object v0, p0, Lorg/c/a/e/o;->g:Lorg/c/a/e/s;

    invoke-virtual {p0, v0}, Lorg/c/a/e/o;->b(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/c/a/e/o;->d:Lorg/c/a/d/f/b;

    invoke-virtual {p0, v0}, Lorg/c/a/e/o;->b(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method static synthetic a(Lorg/c/a/e/o;)Lorg/c/a/d/g/c;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/c/a/e/o;->f:Lorg/c/a/d/g/c;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/e/o;)Lorg/c/a/e/k;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/c/a/e/o;->i:Lorg/c/a/e/k;

    return-object v0
.end method

.method static synthetic f()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/c/a/e/o;->a:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method static synthetic g()Lorg/c/a/c/o;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/c/a/e/o;->b:Lorg/c/a/c/o;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    .line 254
    iget-object v2, p0, Lorg/c/a/e/o;->d:Lorg/c/a/d/f/b;

    invoke-virtual {v2, v0, v1}, Lorg/c/a/d/f/b;->a(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 260
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 261
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 263
    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/o;->d:Lorg/c/a/d/f/b;

    invoke-virtual {v0}, Lorg/c/a/d/f/b;->i()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()Lorg/c/a/e/s;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lorg/c/a/e/s;

    invoke-direct {v0, p0}, Lorg/c/a/e/s;-><init>(Lorg/c/a/e/o;)V

    return-object v0
.end method

.method protected a(Lorg/c/a/e/t;)Z
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/c/a/e/o;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/o;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/c/a/c/b/j;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/c/a/e/o;->g:Lorg/c/a/e/s;

    return-object v0
.end method

.method protected b(Lorg/c/a/e/t;)Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/c/a/e/o;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Lorg/c/a/e/b;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/c/a/e/o;->h:Lorg/c/a/e/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/c/a/e/o;->i:Lorg/c/a/e/k;

    invoke-virtual {v0}, Lorg/c/a/e/k;->c()I

    move-result v0

    return v0
.end method

.method public e()Lorg/c/a/e/l;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lorg/c/a/e/l;

    invoke-direct {v0, p0}, Lorg/c/a/e/l;-><init>(Lorg/c/a/e/o;)V

    return-object v0
.end method
