.class Ldolphin/webkit/by;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ldolphin/webkit/LoadListener;

.field private final c:Ljava/lang/String;

.field private final d:Ldolphin/webkit/WebSettingsClassic;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:[B

.field private g:Ldolphin/webkit/ev;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ldolphin/webkit/WebResourceResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Ldolphin/webkit/by;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/by;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/LoadListener;Ldolphin/webkit/WebSettingsClassic;Ljava/lang/String;Ldolphin/webkit/WebResourceResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Ldolphin/webkit/by;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Ldolphin/webkit/by;->c:Ljava/lang/String;

    .line 66
    iput v3, p0, Ldolphin/webkit/by;->h:I

    .line 67
    iput-object p2, p0, Ldolphin/webkit/by;->d:Ldolphin/webkit/WebSettingsClassic;

    .line 68
    iput-object p4, p0, Ldolphin/webkit/by;->l:Ldolphin/webkit/WebResourceResponse;

    .line 69
    sget v0, Ldolphin/webkit/R$string;->config_useragentprofile_url:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ldolphin/webkit/WebKitResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/by;->k:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private a(Ldolphin/webkit/CacheManager$CacheResult;)V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ldolphin/webkit/ab;

    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Ldolphin/webkit/ab;-><init>(Ldolphin/webkit/LoadListener;Ldolphin/webkit/CacheManager$CacheResult;)V

    .line 296
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1, v0}, Ldolphin/webkit/LoadListener;->a(Ldolphin/webkit/ab;)V

    .line 297
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Ldolphin/webkit/ab;->b()V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ldolphin/webkit/LoadListener;Ldolphin/webkit/WebSettings;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x65

    const/4 v0, 0x1

    .line 160
    sget-boolean v1, Ldolphin/webkit/by;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ldolphin/webkit/URLUtil;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Ldolphin/webkit/bw;

    invoke-direct {v2, v1, p1, v0, v0}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Ldolphin/webkit/bw;->b()V

    .line 237
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const/16 v1, -0xc

    const v2, 0x1040007

    invoke-static {v2}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/bw;

    invoke-direct {v3, v1, p1, v0, v0}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v5, v3}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    new-instance v2, Ldolphin/webkit/bw;

    invoke-direct {v2, v1, p1, v4, v0}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Ldolphin/webkit/bw;->b()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/bw;

    invoke-direct {v3, v1, p1, v4, v0}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v5, v3}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    new-instance v2, Ldolphin/webkit/bw;

    invoke-virtual {p2}, Ldolphin/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v3

    invoke-direct {v2, v1, p1, v6, v3}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Ldolphin/webkit/bw;->b()V

    goto :goto_0

    .line 204
    :cond_5
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/bw;

    invoke-virtual {p2}, Ldolphin/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v6, v4}, Ldolphin/webkit/bw;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v5, v3}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 210
    :cond_6
    invoke-virtual {p2}, Ldolphin/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 214
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 215
    new-instance v1, Ldolphin/webkit/bh;

    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ldolphin/webkit/bh;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;)V

    invoke-virtual {v1}, Ldolphin/webkit/bh;->b()V

    goto/16 :goto_0

    .line 218
    :cond_7
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/bh;

    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ldolphin/webkit/bh;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;)V

    invoke-virtual {v1, v5, v2}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 224
    :cond_8
    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 226
    new-instance v2, Ldolphin/webkit/bp;

    invoke-direct {v2, v1, p1}, Ldolphin/webkit/bp;-><init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;)V

    invoke-virtual {v2}, Ldolphin/webkit/bp;->b()V

    goto/16 :goto_0

    .line 228
    :cond_9
    invoke-static {v1}, Ldolphin/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 232
    const-string v1, "text/html"

    invoke-virtual {p1, v1}, Ldolphin/webkit/LoadListener;->a(Ljava/lang/String;)V

    .line 233
    const-string v1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ldolphin/webkit/LoadListener;->a([BI)V

    .line 234
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->a()V

    goto/16 :goto_0

    .line 237
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 312
    iget v1, p0, Ldolphin/webkit/by;->h:I

    packed-switch v1, :pswitch_data_0

    .line 365
    iget-object v0, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    iget-object v1, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ldolphin/webkit/LoadListener;->a(Ljava/util/Map;)Z

    move-result v0

    .line 368
    :goto_0
    return v0

    .line 323
    :pswitch_0
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v2}, Ldolphin/webkit/LoadListener;->p()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v4}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;JLjava/util/Map;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0, v1}, Ldolphin/webkit/by;->a(Ldolphin/webkit/CacheManager$CacheResult;)V

    goto :goto_0

    .line 332
    :cond_0
    const/16 v1, -0xe

    .line 333
    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    iget-object v3, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v3}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Ldolphin/net/http/k;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v2}, Ldolphin/webkit/LoadListener;->p()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v4}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;JLjava/util/Map;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_1

    .line 353
    invoke-direct {p0, v1}, Ldolphin/webkit/by;->a(Ldolphin/webkit/CacheManager$CacheResult;)V

    goto :goto_0

    .line 368
    :cond_1
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Ldolphin/webkit/by;->d:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 385
    iget-object v1, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v2, "Accept-Language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/by;->d:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Ldolphin/webkit/by;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/by;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 394
    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "x-wap-profile"

    iget-object v2, p0, Ldolphin/webkit/by;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_3
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 404
    iget-object v0, p0, Ldolphin/webkit/by;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "Referer"

    iget-object v2, p0, Ldolphin/webkit/by;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/by;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v1, "content-type"

    iget-object v2, p0, Ldolphin/webkit/by;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    invoke-virtual {v0}, Ldolphin/webkit/ev;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v1, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    invoke-virtual {v0}, Ldolphin/webkit/ev;->d()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v2, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    invoke-virtual {v2}, Ldolphin/webkit/ev;->e()Ljava/lang/String;

    move-result-object v2

    .line 416
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 419
    const/4 v1, 0x1

    invoke-static {v1}, Ldolphin/net/c/c;->c(Z)Ljava/lang/String;

    move-result-object v1

    .line 420
    iget-object v3, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v2}, Ldolphin/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->k()Ldolphin/net/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/CookieManager;->getCookie(Ldolphin/net/e;)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 430
    iget-object v1, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    const-string v2, "Cookie"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3
    return-void

    .line 416
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Ldolphin/webkit/by;->h:I

    .line 88
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ldolphin/webkit/by;->f:[B

    .line 80
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const v5, 0x1040007

    const/16 v4, -0xc

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v2}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, p0, Ldolphin/webkit/by;->l:Ldolphin/webkit/WebResourceResponse;

    if-eqz v3, :cond_2

    .line 112
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Ldolphin/webkit/by;->l:Ldolphin/webkit/WebResourceResponse;

    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebResourceResponse;->loader(Ldolphin/webkit/LoadListener;)Ldolphin/webkit/gw;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/gw;->b()V

    .line 119
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ldolphin/webkit/LoadListener;->a(I)V

    .line 120
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->t()V

    .line 154
    :cond_0
    :goto_1
    return v0

    .line 115
    :cond_1
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Ldolphin/webkit/by;->l:Ldolphin/webkit/WebResourceResponse;

    iget-object v4, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebResourceResponse;->loader(Ldolphin/webkit/LoadListener;)Ldolphin/webkit/gw;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v2}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    iget-object v2, p0, Ldolphin/webkit/by;->d:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebSettingsClassic;->getBlockNetworkLoads()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v0, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-static {v5}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 127
    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v2}, Ldolphin/webkit/LoadListener;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    iget-object v0, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-static {v5}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    .line 138
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {p0}, Ldolphin/webkit/by;->b()Z

    move-result v0

    goto :goto_1

    .line 141
    :cond_5
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 144
    :cond_6
    iget-object v3, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    iget-object v4, p0, Ldolphin/webkit/by;->d:Ldolphin/webkit/WebSettingsClassic;

    invoke-static {v2, v3, v4}, Ldolphin/webkit/by;->a(Ljava/lang/String;Ldolphin/webkit/LoadListener;Ldolphin/webkit/WebSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v0, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xa

    const v3, 0x1040008

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 154
    goto/16 :goto_1
.end method

.method b()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v3, -0xc

    .line 243
    iget-object v2, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    .line 246
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/by;->d()V

    .line 247
    invoke-direct {p0}, Ldolphin/webkit/by;->e()V

    .line 250
    iget-object v2, p0, Ldolphin/webkit/by;->c:Ljava/lang/String;

    const-string v4, "OPTIONS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Ldolphin/webkit/by;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    iget-object v1, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    iget-object v2, p0, Ldolphin/webkit/by;->c:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    iget-object v4, p0, Ldolphin/webkit/by;->f:[B

    invoke-virtual {v1, v2, v3, v4}, Ldolphin/webkit/LoadListener;->a(Ljava/lang/String;Ljava/util/Map;[B)V

    .line 281
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    const/16 v2, -0xa

    .line 268
    :try_start_0
    iget-object v4, p0, Ldolphin/webkit/by;->g:Ldolphin/webkit/ev;

    iget-object v5, p0, Ldolphin/webkit/by;->c:Ljava/lang/String;

    iget-object v6, p0, Ldolphin/webkit/by;->e:Ljava/util/Map;

    iget-object v7, p0, Ldolphin/webkit/by;->f:[B

    iget-object v8, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v4, v5, v6, v7, v8}, Ldolphin/webkit/ev;->a(Ljava/lang/String;Ljava/util/Map;[BLdolphin/webkit/LoadListener;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 277
    :goto_1
    if-nez v3, :cond_1

    .line 278
    iget-object v0, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    iget-object v3, p0, Ldolphin/webkit/by;->b:Ldolphin/webkit/LoadListener;

    invoke-virtual {v3}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Ldolphin/net/http/k;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 279
    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    move v2, v3

    move v3, v1

    .line 276
    goto :goto_1

    .line 272
    :catch_1
    move-exception v2

    move v2, v3

    move v3, v1

    .line 275
    goto :goto_1
.end method
