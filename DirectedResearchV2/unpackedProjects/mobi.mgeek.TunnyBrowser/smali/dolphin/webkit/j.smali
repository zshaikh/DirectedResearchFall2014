.class public Ldolphin/webkit/j;
.super Ljava/lang/Object;
.source "BackgroundLoader.java"


# static fields
.field static final synthetic a:Z

.field private static b:Ldolphin/webkit/j;

.field private static o:Z


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldolphin/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldolphin/webkit/WebViewClassic;

.field private e:Ldolphin/webkit/WebChromeClient;

.field private f:Ldolphin/webkit/WebViewClient;

.field private g:Ldolphin/webkit/WebBackForwardListClient;

.field private h:Ldolphin/webkit/DownloadListener;

.field private i:Ldolphin/util/j;

.field private j:Landroid/os/Handler;

.field private k:Ldolphin/webkit/s;

.field private l:Ldolphin/webkit/o;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Ldolphin/webkit/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/j;->a:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/j;->b:Ldolphin/webkit/j;

    .line 75
    sput-boolean v1, Ldolphin/webkit/j;->o:Z

    return-void

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ldolphin/webkit/p;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/p;-><init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V

    iput-object v0, p0, Ldolphin/webkit/j;->e:Ldolphin/webkit/WebChromeClient;

    .line 53
    new-instance v0, Ldolphin/webkit/q;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/q;-><init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V

    iput-object v0, p0, Ldolphin/webkit/j;->f:Ldolphin/webkit/WebViewClient;

    .line 54
    new-instance v0, Ldolphin/webkit/t;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/t;-><init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V

    iput-object v0, p0, Ldolphin/webkit/j;->g:Ldolphin/webkit/WebBackForwardListClient;

    .line 55
    new-instance v0, Ldolphin/webkit/n;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/n;-><init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V

    iput-object v0, p0, Ldolphin/webkit/j;->h:Ldolphin/webkit/DownloadListener;

    .line 60
    sget-object v0, Ldolphin/webkit/s;->a:Ldolphin/webkit/s;

    iput-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    .line 61
    sget-object v0, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    iput-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    .line 62
    iput-object v1, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Ldolphin/webkit/j;->n:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public static a()Ldolphin/webkit/j;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Ldolphin/webkit/j;->b:Ldolphin/webkit/j;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ldolphin/webkit/j;

    invoke-direct {v0}, Ldolphin/webkit/j;-><init>()V

    sput-object v0, Ldolphin/webkit/j;->b:Ldolphin/webkit/j;

    .line 229
    :cond_0
    sget-object v0, Ldolphin/webkit/j;->b:Ldolphin/webkit/j;

    return-object v0
.end method

.method private a(Ldolphin/webkit/u;)Ldolphin/webkit/o;
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    .line 428
    sget-object v1, Ldolphin/webkit/m;->a:[I

    iget-object v2, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    invoke-virtual {v2}, Ldolphin/webkit/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 453
    :goto_0
    :pswitch_0
    return-object v0

    .line 433
    :pswitch_1
    sget-object v0, Ldolphin/webkit/u;->a:Ldolphin/webkit/u;

    if-ne p1, v0, :cond_1

    .line 435
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->stopLoading()V

    .line 437
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->D()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 438
    const-string v1, "BackgroundLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background current backforwardlist index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-lez v0, :cond_0

    .line 440
    iget-object v1, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebViewClassic;->goBackOrForward(I)V

    .line 446
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    .line 447
    sget-object v0, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    goto :goto_0

    .line 443
    :cond_1
    sget-object v0, Ldolphin/webkit/u;->b:Ldolphin/webkit/u;

    if-ne p1, v0, :cond_0

    .line 444
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->stopLoading()V

    goto :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Ldolphin/webkit/j;Ldolphin/webkit/o;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/j;->a(Ldolphin/webkit/o;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/j;Ldolphin/webkit/s;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ldolphin/webkit/j;->a(Ldolphin/webkit/s;)V

    return-void
.end method

.method private declared-synchronized a(Ldolphin/webkit/o;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    const/16 v1, 0x67

    invoke-virtual {p1}, Ldolphin/webkit/o;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Ldolphin/util/j;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ldolphin/webkit/s;)V
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Ldolphin/webkit/j;->o:Z

    return p0
.end method

.method static synthetic b(Ldolphin/webkit/j;)Ldolphin/webkit/s;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ldolphin/webkit/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/j;Ldolphin/webkit/o;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/j;->b(Ldolphin/webkit/o;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ldolphin/webkit/o;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 392
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stateData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v0, Ldolphin/webkit/m;->a:[I

    invoke-virtual {p1}, Ldolphin/webkit/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    if-ne p1, v0, :cond_0

    .line 410
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeed move to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_1
    return-void

    :pswitch_0
    move-object v0, p2

    .line 395
    check-cast v0, Ldolphin/webkit/u;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/u;)Ldolphin/webkit/o;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    goto :goto_0

    :pswitch_1
    move-object v0, p2

    .line 398
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->d(Ljava/lang/String;)Ldolphin/webkit/o;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    goto :goto_0

    :pswitch_2
    move-object v0, p2

    .line 401
    check-cast v0, Ljava/lang/String;

    .line 402
    invoke-direct {p0, v0}, Ldolphin/webkit/j;->e(Ljava/lang/String;)Ldolphin/webkit/o;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    goto :goto_0

    .line 415
    :cond_0
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed move to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ldolphin/webkit/j;->n:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Ldolphin/webkit/j;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 181
    iget-object v1, p0, Ldolphin/webkit/j;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 184
    check-cast v0, Ljava/lang/String;

    .line 188
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->syncFromOther(Ldolphin/webkit/WebSettingsClassic;)V

    .line 324
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/view/View;)V

    .line 326
    :cond_0
    return-void
.end method

.method static synthetic c(Ldolphin/webkit/j;)Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ldolphin/webkit/j;->g()Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Ldolphin/webkit/o;
    .locals 5

    .prologue
    .line 457
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    .line 461
    invoke-direct {p0}, Ldolphin/webkit/j;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const-string v1, "BackgroundLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not initialized, save url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-object p1, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    .line 507
    :cond_0
    :goto_0
    return-object v0

    .line 468
    :cond_1
    sget-object v1, Ldolphin/webkit/m;->a:[I

    iget-object v2, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    invoke-virtual {v2}, Ldolphin/webkit/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 498
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel current preread  and start new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v0, Ldolphin/webkit/u;->a:Ldolphin/webkit/u;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/u;)Ldolphin/webkit/o;

    move-result-object v0

    .line 500
    sget-object v1, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    if-ne v0, v1, :cond_0

    .line 501
    sget-object v1, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    invoke-direct {p0, v1, p1}, Ldolphin/webkit/j;->a(Ldolphin/webkit/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :pswitch_0
    const-string v1, "about:blank"

    iget-object v2, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real Start Backgrounding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-object p1, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/webkit/j;->o:Z

    .line 475
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    .line 476
    sget-object v0, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    goto :goto_0

    .line 480
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->D()Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 481
    const-string v2, "BackgroundLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background current backforwardlist index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-lez v1, :cond_3

    .line 483
    iget-object v2, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v2, v1}, Ldolphin/webkit/WebViewClassic;->goBackOrForward(I)V

    .line 490
    :goto_1
    sget-object v1, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    invoke-direct {p0, v1, p1}, Ldolphin/webkit/j;->a(Ldolphin/webkit/o;Ljava/lang/Object;)V

    .line 493
    const-string v1, "BackgroundLoader"

    const-string v2, "Background WebView not on IDLE page, delay the Backgrounding."

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    const-string v2, "about:blank"

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Ldolphin/webkit/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Ldolphin/webkit/j;)Ldolphin/webkit/o;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ldolphin/webkit/o;
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    .line 513
    sget-object v1, Ldolphin/webkit/m;->a:[I

    iget-object v2, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    invoke-virtual {v2}, Ldolphin/webkit/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 525
    :goto_0
    return-object v0

    .line 515
    :pswitch_0
    const-string v1, "BackgroundLoader"

    const-string v2, "Backgrounding not started, but already finished -_-|||"

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/j;->l:Ldolphin/webkit/o;

    sget-object v0, Ldolphin/webkit/o;->c:Ldolphin/webkit/o;

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic f(Ldolphin/webkit/j;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Ldolphin/webkit/j;->o:Z

    return v0
.end method

.method static synthetic g(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ldolphin/webkit/j;->i()V

    return-void
.end method

.method private g()Z
    .locals 4

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x1

    .line 330
    iget-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    sget-object v1, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    if-ne v0, v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v2

    .line 333
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    sget-object v1, Ldolphin/webkit/s;->a:Ldolphin/webkit/s;

    if-ne v0, v1, :cond_2

    .line 334
    invoke-direct {p0}, Ldolphin/webkit/j;->h()V

    .line 335
    sget-object v0, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/s;)V

    .line 338
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    invoke-virtual {v0, v3}, Ldolphin/util/j;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    invoke-virtual {v0, v3}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v1, Ldolphin/webkit/WebView;

    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    .line 353
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/j;->e:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V

    .line 354
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/j;->f:Ldolphin/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebViewClient(Ldolphin/webkit/WebViewClient;)V

    .line 355
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/j;->g:Ldolphin/webkit/WebBackForwardListClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebBackForwardListClient(Ldolphin/webkit/WebBackForwardListClient;)V

    .line 356
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/j;->h:Ldolphin/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setDownloadListener(Ldolphin/webkit/DownloadListener;)V

    .line 358
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->c(Ldolphin/webkit/WebViewClassic;)V

    .line 360
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->setEnableVideoPlayer(Z)V

    .line 361
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->setAdBlockEnabled(Z)V

    .line 362
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->setBlockNetworkImage(Z)V

    .line 363
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->setLoadsImagesAutomatically(Z)V

    .line 364
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->setEnableVideoCache(Z)V

    .line 365
    iget-object v0, p0, Ldolphin/webkit/j;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->setJavaScriptEnabled(Z)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 371
    iget-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    sget-object v1, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/j;->k:Ldolphin/webkit/s;

    sget-object v1, Ldolphin/webkit/s;->a:Ldolphin/webkit/s;

    if-ne v0, v1, :cond_2

    .line 375
    sget-object v0, Ldolphin/webkit/s;->b:Ldolphin/webkit/s;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/s;)V

    .line 378
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Ldolphin/webkit/j;->b(Ldolphin/webkit/WebViewClassic;)V

    .line 284
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 153
    const-string v0, "utf-8"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 155
    :goto_0
    if-eq v0, v4, :cond_1

    .line 156
    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 158
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/j;->p:Ljava/util/Map;

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 177
    :cond_1
    :goto_2
    return-void

    .line 161
    :pswitch_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v2, "web"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Ldolphin/webkit/j;->p:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    goto :goto_2

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Ldolphin/webkit/k;

    invoke-direct {v0, p0}, Ldolphin/webkit/k;-><init>(Ldolphin/webkit/j;)V

    iput-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    goto :goto_0
.end method

.method public b(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Ldolphin/webkit/j;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 288
    :cond_0
    sget-boolean v0, Ldolphin/webkit/j;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    .line 292
    invoke-direct {p0}, Ldolphin/webkit/j;->g()Z

    .line 293
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0, v0}, Ldolphin/webkit/j;->c(Ldolphin/webkit/WebViewClassic;)V

    .line 295
    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 305
    iget-object v0, p0, Ldolphin/webkit/j;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Ldolphin/webkit/JniUtil;->prepareBackgroundLoaderData()V

    .line 309
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 310
    :cond_1
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 312
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    iget-object v0, p0, Ldolphin/webkit/j;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    :cond_3
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackgrounding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v0, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    invoke-direct {p0, v0, p1}, Ldolphin/webkit/j;->a(Ldolphin/webkit/o;Ljava/lang/Object;)V

    .line 318
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Ldolphin/webkit/l;

    invoke-direct {v0, p0}, Ldolphin/webkit/l;-><init>(Ldolphin/webkit/j;)V

    iput-object v0, p0, Ldolphin/webkit/j;->i:Ldolphin/util/j;

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 298
    sget-boolean v0, Ldolphin/webkit/j;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/j;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLoadFailedUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/j;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Ldolphin/webkit/j;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/webkit/j;->b(Ljava/lang/String;)Z

    .line 302
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Ldolphin/webkit/o;->a:Ldolphin/webkit/o;

    sget-object v1, Ldolphin/webkit/u;->a:Ldolphin/webkit/u;

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/j;->a(Ldolphin/webkit/o;Ljava/lang/Object;)V

    .line 423
    return-void
.end method
