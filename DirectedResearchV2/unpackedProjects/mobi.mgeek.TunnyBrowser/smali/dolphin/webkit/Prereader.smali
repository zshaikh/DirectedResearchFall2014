.class public Ldolphin/webkit/Prereader;
.super Ljava/lang/Object;
.source "Prereader.java"


# static fields
.field static final synthetic a:Z

.field private static b:Ldolphin/webkit/Prereader;


# instance fields
.field private c:Ldolphin/webkit/WebViewClassic;

.field private d:Ldolphin/webkit/WebViewClassic;

.field private e:Ldolphin/webkit/BrowserFrame;

.field private f:Ldolphin/webkit/BrowserFrame;

.field private g:Ldolphin/webkit/WebChromeClient;

.field private h:Ldolphin/webkit/WebViewClient;

.field private i:Ldolphin/webkit/WebBackForwardListClient;

.field private j:Ldolphin/util/j;

.field private k:Landroid/os/Handler;

.field private l:Ldolphin/webkit/ht;

.field private m:Ldolphin/webkit/gl;

.field private n:Ldolphin/webkit/gm;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ldolphin/webkit/Prereader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/Prereader;->a:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/Prereader;->b:Ldolphin/webkit/Prereader;

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ldolphin/webkit/gj;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/gj;-><init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->g:Ldolphin/webkit/WebChromeClient;

    .line 62
    new-instance v0, Ldolphin/webkit/gk;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/gk;-><init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->h:Ldolphin/webkit/WebViewClient;

    .line 63
    new-instance v0, Ldolphin/webkit/gi;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/gi;-><init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->i:Ldolphin/webkit/WebBackForwardListClient;

    .line 66
    new-instance v0, Ldolphin/webkit/gg;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/gg;-><init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->l:Ldolphin/webkit/ht;

    .line 68
    sget-object v0, Ldolphin/webkit/gl;->a:Ldolphin/webkit/gl;

    iput-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    .line 69
    sget-object v0, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    iput-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 70
    iput-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/Prereader;)Ldolphin/webkit/gl;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    return-object v0
.end method

.method private a(Ldolphin/webkit/WebHistoryItem;)Ldolphin/webkit/gm;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 487
    return-object v0
.end method

.method private a(Ldolphin/webkit/gh;)Ldolphin/webkit/gm;
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 391
    sget-object v1, Ldolphin/webkit/gf;->a:[I

    iget-object v2, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    invoke-virtual {v2}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 416
    :goto_0
    :pswitch_0
    return-object v0

    .line 399
    :pswitch_1
    sget-object v0, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    if-ne p1, v0, :cond_1

    .line 401
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->stopLoading()V

    .line 402
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->goBack()V

    .line 409
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    .line 410
    sget-object v0, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Ldolphin/webkit/gh;->b:Ldolphin/webkit/gh;

    if-ne p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->stopLoading()V

    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gl;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gl;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized a(Ldolphin/webkit/gl;)V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ldolphin/webkit/gm;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    const/16 v1, 0x67

    invoke-virtual {p1}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Ldolphin/util/j;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ldolphin/webkit/hj;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->D()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebBackForwardList;->updatePrereadItemStatus(Ldolphin/webkit/hj;)V

    .line 549
    return-void
.end method

.method public static b()Ldolphin/webkit/Prereader;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Ldolphin/webkit/Prereader;->b:Ldolphin/webkit/Prereader;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ldolphin/webkit/Prereader;

    invoke-direct {v0}, Ldolphin/webkit/Prereader;-><init>()V

    sput-object v0, Ldolphin/webkit/Prereader;->b:Ldolphin/webkit/Prereader;

    .line 174
    :cond_0
    sget-object v0, Ldolphin/webkit/Prereader;->b:Ldolphin/webkit/Prereader;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/Prereader;->b(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->syncFromOther(Ldolphin/webkit/WebSettingsClassic;)V

    .line 289
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/view/View;)V

    .line 291
    :cond_0
    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/Prereader;->l:Ldolphin/webkit/ht;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->addPostSyncObserver(Ldolphin/webkit/ht;)V

    .line 292
    return-void
.end method

.method private b(Ldolphin/webkit/gm;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 348
    sget-object v0, Ldolphin/webkit/gf;->a:[I

    invoke-virtual {p1}, Ldolphin/webkit/gm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    if-ne p1, v0, :cond_1

    .line 386
    :cond_1
    return-void

    .line 350
    :pswitch_1
    check-cast p2, Ldolphin/webkit/gh;

    invoke-direct {p0, p2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gh;)Ldolphin/webkit/gm;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    goto :goto_0

    .line 353
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Ldolphin/webkit/Prereader;->c(Ljava/lang/String;)Ldolphin/webkit/gm;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    goto :goto_0

    .line 356
    :pswitch_3
    check-cast p2, Ldolphin/webkit/WebHistoryItem;

    invoke-direct {p0, p2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/WebHistoryItem;)Ldolphin/webkit/gm;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    goto :goto_0

    .line 361
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .line 362
    invoke-direct {p0, p2}, Ldolphin/webkit/Prereader;->d(Ljava/lang/String;)Ldolphin/webkit/gm;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 363
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    sget-object v1, Ldolphin/webkit/gm;->e:Ldolphin/webkit/gm;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    sget-object v1, Ldolphin/webkit/gm;->f:Ldolphin/webkit/gm;

    if-ne v0, v1, :cond_0

    .line 365
    :cond_2
    sget-object v0, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    sget-object v1, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Ldolphin/webkit/Prereader;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->e()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Ldolphin/webkit/gm;
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 424
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    iput-object p1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :cond_1
    sget-object v1, Ldolphin/webkit/gf;->a:[I

    iget-object v2, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    invoke-virtual {v2}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    const-string v1, "about:blank"

    iget-object v2, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    iput-object p1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    .line 438
    sget-object v0, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->goBack()V

    .line 448
    :goto_1
    sget-object v1, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    invoke-direct {p0, v1, p1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    const-string v2, "about:blank"

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 460
    const-string v0, "Prereader"

    const-string v1, "Prereading in work with null url in new prereading ?!!"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v0, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gh;)Ldolphin/webkit/gm;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_4
    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    sget-object v0, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gh;)Ldolphin/webkit/gm;

    move-result-object v0

    .line 469
    sget-object v1, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    if-ne v0, v1, :cond_0

    .line 470
    sget-object v1, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    invoke-direct {p0, v1, p1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Ldolphin/webkit/Prereader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ldolphin/webkit/Prereader;)Ldolphin/webkit/gm;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ldolphin/webkit/gm;
    .locals 6

    .prologue
    .line 491
    iget-object v1, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    .line 493
    sget-object v0, Ldolphin/webkit/gf;->a:[I

    iget-object v2, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    invoke-virtual {v2}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 527
    :goto_0
    return-object v1

    .line 495
    :pswitch_0
    const-string v0, "Prereader"

    const-string v2, "Prereading not started, but already finished -_-|||"

    invoke-static {v0, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-direct {p0, p1}, Ldolphin/webkit/Prereader;->e(Ljava/lang/String;)I

    move-result v3

    .line 503
    sget-object v0, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    .line 504
    packed-switch v3, :pswitch_data_1

    .line 520
    :goto_1
    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/hj;)V

    goto :goto_0

    .line 508
    :pswitch_2
    sget-object v2, Ldolphin/webkit/gm;->f:Ldolphin/webkit/gm;

    .line 509
    sget-object v1, Ldolphin/webkit/hj;->d:Ldolphin/webkit/hj;

    .line 510
    const-string v4, "Prereader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preread Failed on "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", error: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_0

    const-string v0, "TRANSFERRED_NONE"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v1, v2

    .line 512
    goto :goto_1

    .line 510
    :cond_0
    const-string v0, "TRANSFERRED_ITEM"

    goto :goto_2

    .line 514
    :pswitch_3
    sget-object v0, Ldolphin/webkit/hj;->c:Ldolphin/webkit/hj;

    .line 515
    sget-object v1, Ldolphin/webkit/gm;->e:Ldolphin/webkit/gm;

    goto :goto_1

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 504
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->D()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 554
    invoke-virtual {v0, v1}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Ldolphin/webkit/Prereader;->f:Ldolphin/webkit/BrowserFrame;

    iget v0, v0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    iget-object v2, p0, Ldolphin/webkit/Prereader;->e:Ldolphin/webkit/BrowserFrame;

    iget v2, v2, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {p0, v0, v2, v1}, Ldolphin/webkit/Prereader;->nativeTransferHistoryItem(III)I

    move-result v0

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Ldolphin/webkit/Prereader;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 296
    iget-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    sget-object v1, Ldolphin/webkit/gl;->c:Ldolphin/webkit/gl;

    if-ne v0, v1, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    sget-object v1, Ldolphin/webkit/gl;->a:Ldolphin/webkit/gl;

    if-ne v0, v1, :cond_1

    .line 300
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->f()V

    .line 303
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    invoke-virtual {v0, v2}, Ldolphin/util/j;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    invoke-virtual {v0, v2}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ldolphin/webkit/WebView;

    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    .line 315
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/Prereader;->g:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V

    .line 316
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/Prereader;->h:Ldolphin/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebViewClient(Ldolphin/webkit/WebViewClient;)V

    .line 317
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/Prereader;->i:Ldolphin/webkit/WebBackForwardListClient;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->setWebBackForwardListClient(Ldolphin/webkit/WebBackForwardListClient;)V

    .line 319
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->b(Ldolphin/webkit/WebViewClassic;)V

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic f(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 325
    iget-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    sget-object v1, Ldolphin/webkit/gl;->c:Ldolphin/webkit/gl;

    if-ne v0, v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/Prereader;->m:Ldolphin/webkit/gl;

    sget-object v1, Ldolphin/webkit/gl;->a:Ldolphin/webkit/gl;

    if-ne v0, v1, :cond_2

    .line 329
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->h()V

    .line 330
    sget-object v0, Ldolphin/webkit/gl;->b:Ldolphin/webkit/gl;

    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gl;)V

    .line 333
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/Prereader;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Ldolphin/webkit/Prereader;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Ldolphin/webkit/Prereader;->f:Ldolphin/webkit/BrowserFrame;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->getBrowserFrame()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->f:Ldolphin/webkit/BrowserFrame;

    .line 537
    iget-object v0, p0, Ldolphin/webkit/Prereader;->f:Ldolphin/webkit/BrowserFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/webkit/BrowserFrame;->a(Z)V

    .line 542
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ldolphin/webkit/Prereader;->d:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method public a(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Ldolphin/webkit/Prereader;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_0
    sget-boolean v0, Ldolphin/webkit/Prereader;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/Prereader;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    if-eq v0, p1, :cond_3

    .line 230
    iput-object p1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    .line 231
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->getBrowserFrame()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/Prereader;->e:Ldolphin/webkit/BrowserFrame;

    .line 232
    invoke-direct {p0}, Ldolphin/webkit/Prereader;->e()Z

    .line 233
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0, v0}, Ldolphin/webkit/Prereader;->b(Ldolphin/webkit/WebViewClassic;)V

    .line 235
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :cond_2
    sget-object v0, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    invoke-direct {p0, v0, p1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    .line 246
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 253
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/Prereader;->o:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    sget-object v1, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    sget-object v2, Ldolphin/webkit/gh;->a:Ldolphin/webkit/gh;

    invoke-direct {p0, v1, v2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_2
    sget-object v1, Ldolphin/webkit/gf;->a:[I

    iget-object v2, p0, Ldolphin/webkit/Prereader;->n:Ldolphin/webkit/gm;

    invoke-virtual {v2}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_1
    sget-object v1, Ldolphin/webkit/gm;->a:Ldolphin/webkit/gm;

    sget-object v2, Ldolphin/webkit/gh;->b:Ldolphin/webkit/gh;

    invoke-direct {p0, v1, v2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v1, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Ldolphin/webkit/Prereader;->c:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->goForward()V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ldolphin/webkit/Prereader;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ldolphin/webkit/gd;

    invoke-direct {v0, p0}, Ldolphin/webkit/gd;-><init>(Ldolphin/webkit/Prereader;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->k:Landroid/os/Handler;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Ldolphin/webkit/ge;

    invoke-direct {v0, p0}, Ldolphin/webkit/ge;-><init>(Ldolphin/webkit/Prereader;)V

    iput-object v0, p0, Ldolphin/webkit/Prereader;->j:Ldolphin/util/j;

    goto :goto_0
.end method

.method native nativeTransferHistoryItem(III)I
.end method
