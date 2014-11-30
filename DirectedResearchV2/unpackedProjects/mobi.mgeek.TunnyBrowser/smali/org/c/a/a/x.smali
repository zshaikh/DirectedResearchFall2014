.class Lorg/c/a/a/x;
.super Lorg/c/a/d/g/f;
.source "SelectConnector.java"


# instance fields
.field final synthetic a:Lorg/c/a/a/w;

.field private final b:Ljava/nio/channels/SocketChannel;

.field private final i:Lorg/c/a/a/o;


# direct methods
.method public constructor <init>(Lorg/c/a/a/w;Ljava/nio/channels/SocketChannel;Lorg/c/a/a/o;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/c/a/a/x;->a:Lorg/c/a/a/w;

    invoke-direct {p0}, Lorg/c/a/d/g/f;-><init>()V

    .line 222
    iput-object p2, p0, Lorg/c/a/a/x;->b:Ljava/nio/channels/SocketChannel;

    .line 223
    iput-object p3, p0, Lorg/c/a/a/x;->i:Lorg/c/a/a/o;

    .line 224
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 229
    iget-object v0, p0, Lorg/c/a/a/x;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lorg/c/a/a/w;->a()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "Channel {} timed out while connecting, closing it"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/a/x;->b:Ljava/nio/channels/SocketChannel;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/x;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    iget-object v0, p0, Lorg/c/a/a/x;->i:Lorg/c/a/a/o;

    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    .line 243
    :cond_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    invoke-static {}, Lorg/c/a/a/w;->a()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
