.class Ldolphin/net/websockets/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field public static a:I


# instance fields
.field private b:Ljava/net/URI;

.field private c:Ljava/nio/channels/SocketChannel;

.field private d:Ljava/nio/channels/Selector;

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;

.field private h:Ljava/lang/Thread;

.field private i:Z

.field private mNativeClass:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x100

    sput v0, Ldolphin/net/websockets/WebSocketClient;->a:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    .line 64
    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/net/websockets/WebSocketClient;->i:Z

    .line 83
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->b:Ljava/net/URI;

    .line 84
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->e:Ljava/util/concurrent/BlockingQueue;

    .line 85
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "WebSocketClient"

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/net/websockets/WebSocketClient;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->nativeOnClose()V

    return-void
.end method

.method static synthetic a(Ldolphin/net/websockets/WebSocketClient;[BI)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ldolphin/net/websockets/WebSocketClient;->nativeOnMessage([BI)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->close()V

    .line 268
    return-void
.end method

.method private a(Ljava/net/InetSocketAddress;)V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    .line 111
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 112
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 113
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    .line 114
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 115
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 198
    new-array v1, v0, [B

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    new-instance v2, Ldolphin/net/websockets/a;

    invoke-direct {v2, p0, v1, v0}, Ldolphin/net/websockets/a;-><init>(Ldolphin/net/websockets/WebSocketClient;[BI)V

    invoke-static {v2}, Ldolphin/webkit/JWebCoreJavaBridge;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method private b()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 94
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    :cond_0
    return v0
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 219
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already/still connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 229
    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 232
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->close()V

    .line 235
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private close()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 321
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    :try_start_0
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    .line 331
    :cond_1
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->g()V

    .line 332
    return-void

    .line 327
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Ldolphin/net/websockets/WebSocketClient;->i:Z

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 244
    :cond_0
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 245
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->nativeOnOpen()V

    .line 246
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 250
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 251
    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 252
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_0

    .line 257
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 259
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Ldolphin/net/websockets/WebSocketClient;->i:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/websockets/WebSocketClient;->i:Z

    .line 290
    new-instance v0, Ldolphin/net/websockets/b;

    invoke-direct {v0, p0}, Ldolphin/net/websockets/b;-><init>(Ldolphin/net/websockets/WebSocketClient;)V

    invoke-static {v0}, Ldolphin/webkit/JWebCoreJavaBridge;->a(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native nativeOnClose()V
.end method

.method private native nativeOnError()V
.end method

.method private native nativeOnMessage([BI)V
.end method

.method private native nativeOnOpen()V
.end method

.method private send([B)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->b(Ljava/nio/ByteBuffer;)V

    .line 338
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Ldolphin/net/websockets/WebSocketClient;->b:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    sget v0, Ldolphin/net/websockets/WebSocketClient;->a:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 138
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->close()V

    .line 143
    :cond_1
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->f()V

    .line 144
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    .line 145
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 147
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 150
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Ldolphin/net/websockets/WebSocketClient;->c(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-direct {p0, v1}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/nio/ByteBuffer;)V

    .line 153
    :cond_3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->f()V

    .line 159
    :cond_4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :try_start_2
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_3
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/lang/Exception;)V

    .line 192
    :goto_1
    return-void

    .line 132
    :catch_2
    move-exception v0

    .line 133
    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 171
    :catch_3
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 179
    :cond_5
    :try_start_4
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 183
    :goto_2
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    iput-object v4, p0, Ldolphin/net/websockets/WebSocketClient;->d:Ljava/nio/channels/Selector;

    .line 185
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    :try_start_5
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 191
    :goto_3
    iput-object v4, p0, Ldolphin/net/websockets/WebSocketClient;->c:Ljava/nio/channels/SocketChannel;

    goto :goto_1

    .line 180
    :catch_4
    move-exception v0

    .line 181
    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 188
    :catch_5
    move-exception v0

    .line 189
    invoke-direct {p0, v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 311
    :try_start_0
    invoke-direct {p0}, Ldolphin/net/websockets/WebSocketClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    .line 121
    :cond_0
    invoke-virtual {p0}, Ldolphin/net/websockets/WebSocketClient;->a()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/websockets/WebSocketClient;->h:Ljava/lang/Thread;

    .line 123
    return-void
.end method
