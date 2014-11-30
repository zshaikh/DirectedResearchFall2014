.class Ldolphin/webkit/ev;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static a:Ldolphin/webkit/ev;

.field private static b:Z

.field private static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ldolphin/net/c/e;

.field private g:Ldolphin/webkit/gv;

.field private h:Ldolphin/webkit/dw;

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Ldolphin/webkit/ex;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Ldolphin/webkit/ev;->i:Landroid/content/Context;

    .line 172
    new-instance v0, Ldolphin/webkit/gv;

    invoke-direct {v0}, Ldolphin/webkit/gv;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/ev;->g:Ldolphin/webkit/gv;

    .line 173
    new-instance v0, Ldolphin/webkit/dw;

    invoke-direct {v0, p0}, Ldolphin/webkit/dw;-><init>(Ldolphin/webkit/ev;)V

    iput-object v0, p0, Ldolphin/webkit/ev;->h:Ldolphin/webkit/dw;

    .line 175
    new-instance v0, Ldolphin/net/c/e;

    invoke-direct {v0, p1}, Ldolphin/net/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    .line 176
    invoke-static {p1}, Ldolphin/net/b/c;->a(Landroid/content/Context;)Ldolphin/net/b/c;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/ev;->l:Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Ldolphin/net/http/h;->a(Landroid/content/Context;)Ldolphin/net/http/h;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/ev;->m:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldolphin/webkit/ev;
    .locals 3

    .prologue
    .line 113
    const-class v1, Ldolphin/webkit/ev;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ldolphin/webkit/ev;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ldolphin/webkit/ev;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    .line 121
    sget-boolean v0, Ldolphin/webkit/ev;->b:Z

    if-eqz v0, :cond_0

    .line 125
    sget v0, Ldolphin/webkit/ev;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ldolphin/webkit/ev;->c:I

    .line 126
    invoke-static {}, Ldolphin/webkit/ev;->a()V

    .line 129
    :cond_0
    sget-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 137
    sget v0, Ldolphin/webkit/ev;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ldolphin/webkit/ev;->c:I

    if-ne v0, v1, :cond_0

    .line 138
    sget-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    iget-object v0, v0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    invoke-virtual {v0}, Ldolphin/net/c/e;->b()V

    .line 140
    sget-object v0, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    invoke-direct {v0}, Ldolphin/webkit/ev;->f()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sput-boolean v1, Ldolphin/webkit/ev;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/ev;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Ldolphin/webkit/ev;->j:Z

    return p1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ldolphin/webkit/ex;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/ex;-><init>(Ldolphin/webkit/ev;Ldolphin/webkit/ew;)V

    iput-object v0, p0, Ldolphin/webkit/ev;->k:Ldolphin/webkit/ex;

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Ldolphin/webkit/ev;->i:Landroid/content/Context;

    sget-object v2, Ldolphin/webkit/ev;->a:Ldolphin/webkit/ev;

    iget-object v2, v2, Ldolphin/webkit/ev;->k:Ldolphin/webkit/ex;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/LoadListener;)V
    .locals 1

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Ldolphin/webkit/ev;->g:Ldolphin/webkit/gv;

    invoke-virtual {v0, p1}, Ldolphin/webkit/gv;->a(Ldolphin/webkit/LoadListener;)V

    .line 408
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/ev;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;)Z
    .locals 1

    .prologue
    .line 412
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 413
    iget-object v0, p0, Ldolphin/webkit/ev;->g:Ldolphin/webkit/gv;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/gv;->a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;)Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;[BLdolphin/webkit/LoadListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ldolphin/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 220
    const-string p1, "GET"

    .line 222
    :cond_0
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->o()Ldolphin/net/c/d;

    move-result-object v8

    .line 225
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->k()Ldolphin/net/e;

    move-result-object v3

    .line 228
    invoke-static {v4}, Ldolphin/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_1
    :goto_0
    return v1

    .line 234
    :cond_2
    invoke-static {v4}, Ldolphin/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Ldolphin/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Ldolphin/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Ldolphin/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-boolean v0, p0, Ldolphin/webkit/ev;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "X-Moz"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "prefetch"

    const-string v2, "X-Moz"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_3
    const/4 v0, 0x0

    .line 248
    if-eqz p3, :cond_7

    .line 249
    array-length v0, p3

    .line 250
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 253
    :goto_1
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->w()V

    .line 254
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->x()Z

    move-result v5

    if-nez v5, :cond_5

    .line 255
    new-instance v5, Ldolphin/net/resource/h;

    invoke-direct {v5}, Ldolphin/net/resource/h;-><init>()V

    invoke-virtual {v5, p1}, Ldolphin/net/resource/h;->a(Ljava/lang/String;)Ldolphin/net/resource/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Ldolphin/net/resource/h;->b(Ljava/lang/String;)Ldolphin/net/resource/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldolphin/net/resource/h;->a(Ldolphin/net/e;)Ldolphin/net/resource/h;

    move-result-object v3

    invoke-virtual {v3, p2}, Ldolphin/net/resource/h;->a(Ljava/util/Map;)Ldolphin/net/resource/h;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Ldolphin/net/resource/h;->a([BZ)Ldolphin/net/resource/h;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldolphin/net/resource/h;->a(Ljava/io/InputStream;)Ldolphin/net/resource/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/net/resource/h;->a(I)Ldolphin/net/resource/h;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/resource/h;->b()Ldolphin/net/resource/f;

    move-result-object v0

    .line 265
    invoke-virtual {p4, v0}, Ldolphin/webkit/LoadListener;->b(Ldolphin/net/resource/f;)V

    .line 266
    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->interceptRequestContextIfNeeded(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;

    move-result-object v5

    .line 267
    if-eq v5, v0, :cond_4

    .line 268
    invoke-virtual {p4, v5}, Ldolphin/webkit/LoadListener;->a(Ldolphin/net/resource/f;)V

    .line 269
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Ldolphin/webkit/LoadListener;->a(I)V

    .line 271
    :cond_4
    iget-object v3, v5, Ldolphin/net/resource/f;->a:Ljava/lang/String;

    .line 272
    iget-object v1, v5, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    .line 273
    iget-object v2, v5, Ldolphin/net/resource/f;->c:Ldolphin/net/e;

    .line 274
    iget-object v4, v5, Ldolphin/net/resource/f;->d:Ljava/util/Map;

    .line 275
    iget-object v6, v5, Ldolphin/net/resource/f;->f:Ljava/io/InputStream;

    .line 276
    iget v7, v5, Ldolphin/net/resource/f;->g:I

    .line 281
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    .line 283
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, p4

    .line 284
    invoke-virtual/range {v0 .. v7}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;I)Ldolphin/net/c/c;

    move-result-object v0

    .line 286
    invoke-virtual {p4, v0}, Ldolphin/webkit/LoadListener;->a(Ldolphin/net/c/c;)V

    .line 287
    invoke-virtual {v0}, Ldolphin/net/c/c;->d()V

    .line 288
    invoke-virtual {p4}, Ldolphin/webkit/LoadListener;->y()V

    .line 300
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 278
    :cond_5
    const-string v1, "network"

    const-string v5, "Skipped resource handlers."

    invoke-static {v1, v5}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    move-object v6, v2

    move-object v1, v4

    move-object v2, v3

    move-object v4, p2

    move-object v3, p1

    goto :goto_2

    :cond_6
    move-object v5, p4

    .line 290
    invoke-virtual/range {v0 .. v8}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;

    move-result-object v0

    .line 297
    invoke-virtual {p4, v0}, Ldolphin/webkit/LoadListener;->a(Ldolphin/net/c/c;)V

    goto :goto_3

    :cond_7
    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public b(Ldolphin/webkit/LoadListener;)V
    .locals 1

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Ldolphin/webkit/ev;->h:Ldolphin/webkit/dw;

    invoke-virtual {v0, p1}, Ldolphin/webkit/dw;->a(Ldolphin/webkit/LoadListener;)V

    .line 429
    :cond_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/ev;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    invoke-virtual {v0}, Ldolphin/net/c/e;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Ldolphin/webkit/ev;->f:Ldolphin/net/c/e;

    invoke-virtual {v0}, Ldolphin/net/c/e;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ev;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ev;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
