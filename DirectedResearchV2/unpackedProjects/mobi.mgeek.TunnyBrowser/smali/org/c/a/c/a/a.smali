.class public Lorg/c/a/c/a/a;
.super Lorg/c/a/c/a/b;
.source "SocketEndPoint.java"


# static fields
.field private static final i:Lorg/c/a/d/c/d;


# instance fields
.field final a:Ljava/net/Socket;

.field final b:Ljava/net/InetSocketAddress;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/c/a/c/a/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/c/a/a;->i:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/c/a/b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 48
    iput-object p1, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    .line 49
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    .line 50
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    .line 51
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    invoke-super {p0, v0}, Lorg/c/a/c/a/b;->a(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 111
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/c/a/c/a/a;->s()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 260
    iget-object v1, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    if-lez p1, :cond_1

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lorg/c/a/c/a/b;->a(I)V

    .line 262
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 139
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0}, Lorg/c/a/c/a/b;->c()V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a/a;->a()V

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 271
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/c/a/c/a/a;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 276
    sget-object v1, Lorg/c/a/c/a/a;->i:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Lorg/c/a/c/a/b;->f()Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0}, Lorg/c/a/c/a/b;->g()V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a/a;->b()V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0}, Lorg/c/a/c/a/b;->i()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 162
    iput-object v1, p0, Lorg/c/a/c/a/a;->d:Ljava/io/InputStream;

    .line 163
    iput-object v1, p0, Lorg/c/a/c/a/a;->e:Ljava/io/OutputStream;

    .line 164
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    const-string v0, "0.0.0.0"

    .line 177
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, -0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, -0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lorg/c/a/c/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/c/a/a;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <--> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/c/a/a;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
