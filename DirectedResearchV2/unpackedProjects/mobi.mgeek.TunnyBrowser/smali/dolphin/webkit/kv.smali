.class final Ldolphin/webkit/kv;
.super Ldolphin/util/j;
.source "WebViewWorker.java"


# static fields
.field static final synthetic a:Z

.field private static b:Ldolphin/webkit/kv;

.field private static c:Ljava/lang/Object;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldolphin/webkit/LoadListener;",
            "Ldolphin/webkit/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    const-class v0, Ldolphin/webkit/kv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/kv;->a:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldolphin/webkit/kv;->c:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    .line 125
    sput-boolean v1, Ldolphin/webkit/kv;->e:Z

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ldolphin/util/l;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Ldolphin/util/j;-><init>(Ldolphin/util/l;)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ldolphin/util/l;Ldolphin/webkit/kw;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ldolphin/webkit/kv;-><init>(Ldolphin/util/l;)V

    return-void
.end method

.method static declared-synchronized a()Ldolphin/webkit/kv;
    .locals 3

    .prologue
    .line 85
    const-class v1, Ldolphin/webkit/kv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/kv;->b:Ldolphin/webkit/kv;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ldolphin/webkit/kw;

    const-string v2, "WebViewWorkerThread"

    invoke-direct {v0, v2}, Ldolphin/webkit/kw;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    sget-object v2, Ldolphin/webkit/kv;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :goto_0
    :try_start_1
    sget-object v0, Ldolphin/webkit/kv;->b:Ldolphin/webkit/kv;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Ldolphin/webkit/kv;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_1
    :try_start_3
    sget-object v0, Ldolphin/webkit/kv;->b:Ldolphin/webkit/kv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/kv;)Ldolphin/webkit/kv;
    .locals 0

    .prologue
    .line 37
    sput-object p0, Ldolphin/webkit/kv;->b:Ldolphin/webkit/kv;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ldolphin/webkit/kv;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/32 v2, 0xea60

    const/16 v1, 0x6e

    const/4 v6, 0x0

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/gw;

    .line 146
    invoke-virtual {v0}, Ldolphin/webkit/gw;->b()V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/by;

    .line 151
    invoke-virtual {v0}, Ldolphin/webkit/by;->b()Z

    goto :goto_0

    .line 155
    :pswitch_2
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ldolphin/webkit/kx;

    .line 157
    iget-object v0, v7, Ldolphin/webkit/kx;->b:Ljava/lang/String;

    iget v1, v7, Ldolphin/webkit/kx;->d:I

    iget-object v2, v7, Ldolphin/webkit/kx;->f:Ldolphin/net/http/m;

    iget-object v3, v7, Ldolphin/webkit/kx;->c:Ljava/lang/String;

    iget-wide v4, v7, Ldolphin/webkit/kx;->e:J

    invoke-static/range {v0 .. v6}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;ILdolphin/net/http/m;Ljava/lang/String;JZ)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v7, Ldolphin/webkit/kx;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_2
    sget-object v0, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v1, v7, Ldolphin/webkit/kx;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :pswitch_3
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_3

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 169
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/kz;

    .line 170
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v0, Ldolphin/webkit/kz;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/CacheManager$CacheResult;

    .line 172
    if-eqz v1, :cond_0

    .line 173
    iget-object v0, v0, Ldolphin/webkit/kz;->b:Ljava/lang/String;

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 178
    :pswitch_4
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_4

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ky;

    .line 180
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v0, Ldolphin/webkit/ky;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/CacheManager$CacheResult;

    .line 182
    if-eqz v1, :cond_5

    .line 183
    iget-wide v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    iget-object v4, v0, Ldolphin/webkit/ky;->b:Ldolphin/webkit/aa;

    iget v4, v4, Ldolphin/webkit/aa;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    .line 184
    iget-wide v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    sget-wide v4, Ldolphin/webkit/CacheManager;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 185
    invoke-static {v1}, Ldolphin/webkit/CacheManager;->a(Ldolphin/webkit/CacheManager$CacheResult;)Z

    .line 186
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v0, Ldolphin/webkit/ky;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_5
    :goto_1
    iget-object v0, v0, Ldolphin/webkit/ky;->b:Ldolphin/webkit/aa;

    invoke-virtual {v0}, Ldolphin/webkit/aa;->a()V

    goto/16 :goto_0

    .line 189
    :cond_6
    :try_start_0
    iget-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    iget-object v3, v0, Ldolphin/webkit/ky;->b:Ldolphin/webkit/aa;

    iget-object v3, v3, Ldolphin/webkit/aa;->a:[B

    const/4 v4, 0x0

    iget-object v5, v0, Ldolphin/webkit/ky;->b:Ldolphin/webkit/aa;

    iget v5, v5, Ldolphin/webkit/aa;->b:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v2

    .line 192
    invoke-static {v1}, Ldolphin/webkit/CacheManager;->a(Ldolphin/webkit/CacheManager$CacheResult;)Z

    .line 193
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v0, Ldolphin/webkit/ky;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :pswitch_5
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_7

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/la;

    .line 203
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v2, v0, Ldolphin/webkit/la;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/CacheManager$CacheResult;

    .line 205
    if-eqz v1, :cond_8

    .line 206
    iget-object v2, v0, Ldolphin/webkit/la;->b:Ljava/lang/String;

    iget-wide v3, v0, Ldolphin/webkit/la;->c:J

    invoke-static {v2, v3, v4, v1}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;JLdolphin/webkit/CacheManager$CacheResult;)V

    .line 207
    sget-object v2, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    iget-object v3, v0, Ldolphin/webkit/la;->a:Ldolphin/webkit/LoadListener;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_8
    iget-object v0, v0, Ldolphin/webkit/la;->a:Ldolphin/webkit/LoadListener;

    invoke-virtual {v0, v1}, Ldolphin/webkit/LoadListener;->a(Ldolphin/webkit/CacheManager$CacheResult;)V

    goto/16 :goto_0

    .line 213
    :pswitch_6
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_9

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/LoadListener;

    .line 215
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/CacheManager$CacheResult;

    .line 216
    if-eqz v1, :cond_0

    .line 217
    invoke-static {v1}, Ldolphin/webkit/CacheManager;->a(Ldolphin/webkit/CacheManager$CacheResult;)Z

    .line 218
    sget-object v1, Ldolphin/webkit/kv;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 223
    :pswitch_7
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_a
    invoke-static {}, Ldolphin/webkit/CacheManager;->f()V

    goto/16 :goto_0

    .line 228
    :pswitch_8
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_b

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_b
    invoke-static {}, Ldolphin/webkit/CacheManager;->g()V

    goto/16 :goto_0

    .line 233
    :pswitch_9
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_c

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :cond_c
    sget-boolean v0, Ldolphin/webkit/kv;->e:Z

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Ldolphin/webkit/CacheManager;->d()Z

    .line 236
    invoke-static {}, Ldolphin/webkit/CacheManager;->c()Z

    .line 237
    invoke-virtual {p0, v1, v2, v3}, Ldolphin/webkit/kv;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 243
    :pswitch_a
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_d

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_d
    invoke-static {}, Ldolphin/webkit/CacheManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/webkit/kv;->e:Z

    .line 246
    invoke-virtual {p0, v1}, Ldolphin/webkit/kv;->removeMessages(I)V

    goto/16 :goto_0

    .line 251
    :pswitch_b
    sget-boolean v0, Ldolphin/webkit/kv;->a:Z

    if-nez v0, :cond_e

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_e
    invoke-static {}, Ldolphin/webkit/CacheManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sput-boolean v6, Ldolphin/webkit/kv;->e:Z

    .line 254
    invoke-virtual {p0, v1, v2, v3}, Ldolphin/webkit/kv;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
