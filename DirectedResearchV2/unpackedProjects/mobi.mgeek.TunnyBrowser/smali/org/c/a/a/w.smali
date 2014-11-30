.class Lorg/c/a/a/w;
.super Lorg/c/a/d/b/b;
.source "SelectConnector.java"

# interfaces
.implements Lorg/c/a/a/m;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Lorg/c/a/a/k;

.field private final c:Lorg/c/a/a/y;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/c/a/d/g/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/c/a/a/w;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/w;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/a/k;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/c/a/d/b/b;-><init>()V

    .line 52
    new-instance v0, Lorg/c/a/a/y;

    invoke-direct {v0, p0}, Lorg/c/a/a/y;-><init>(Lorg/c/a/a/w;)V

    iput-object v0, p0, Lorg/c/a/a/w;->c:Lorg/c/a/a/y;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/w;->d:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    .line 63
    iget-object v0, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/c/a/a/w;->a(Ljava/lang/Object;Z)Z

    .line 64
    iget-object v0, p0, Lorg/c/a/a/w;->c:Lorg/c/a/a/y;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/c/a/a/w;->a(Ljava/lang/Object;Z)Z

    .line 65
    return-void
.end method

.method static synthetic a(Lorg/c/a/a/w;)Lorg/c/a/a/k;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    return-object v0
.end method

.method static synthetic a()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/c/a/a/w;->a:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/a/w;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/c/a/a/w;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/c/a/a/o;)V
    .locals 5

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lorg/c/a/a/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/o;->g()Lorg/c/a/a/f;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 78
    iget-object v2, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    invoke-virtual {v2}, Lorg/c/a/a/k;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lorg/c/a/a/f;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v3, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    invoke-virtual {v3}, Lorg/c/a/a/k;->l()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 82
    iget-object v0, p0, Lorg/c/a/a/w;->c:Lorg/c/a/a/y;

    invoke-virtual {v0, v1, p1}, Lorg/c/a/a/y;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 106
    :goto_1
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 87
    invoke-virtual {v0}, Lorg/c/a/a/f;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 88
    iget-object v0, p0, Lorg/c/a/a/w;->c:Lorg/c/a/a/y;

    invoke-virtual {v0, v1, p1}, Lorg/c/a/a/y;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lorg/c/a/a/x;

    invoke-direct {v0, p0, v1, p1}, Lorg/c/a/a/x;-><init>(Lorg/c/a/a/w;Ljava/nio/channels/SocketChannel;Lorg/c/a/a/o;)V

    .line 90
    iget-object v2, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    iget-object v3, p0, Lorg/c/a/a/w;->b:Lorg/c/a/a/k;

    invoke-virtual {v3}, Lorg/c/a/a/k;->l()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/c/a/a/k;->a(Lorg/c/a/d/g/f;J)V

    .line 91
    iget-object v2, p0, Lorg/c/a/a/w;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 96
    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 98
    :cond_2
    invoke-virtual {p1, v0}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 100
    :catch_1
    move-exception v0

    .line 102
    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 104
    :cond_3
    invoke-virtual {p1, v0}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
