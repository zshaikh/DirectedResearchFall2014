.class public final Lcom/dolphin/browser/core/t;
.super Ljava/lang/Object;
.source "NetworkBoost.java"


# static fields
.field static final a:Lcom/dolphin/browser/core/x;

.field static final b:Lcom/dolphin/browser/core/x;

.field protected static c:I

.field protected static d:I

.field protected static e:Z

.field protected static f:Z

.field private static g:Lcom/dolphin/browser/core/INetworkPredictor;

.field private static h:Lcom/dolphin/browser/core/IResourceHandler;

.field private static final i:Landroid/os/Handler;

.field private static final j:Ljava/lang/String;

.field private static final k:Lcom/dolphin/browser/core/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/dolphin/browser/core/u;

    invoke-direct {v0}, Lcom/dolphin/browser/core/u;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/t;->a:Lcom/dolphin/browser/core/x;

    .line 177
    new-instance v0, Lcom/dolphin/browser/core/v;

    invoke-direct {v0}, Lcom/dolphin/browser/core/v;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/t;->b:Lcom/dolphin/browser/core/x;

    .line 189
    new-instance v0, Lcom/dolphin/browser/core/w;

    invoke-direct {v0}, Lcom/dolphin/browser/core/w;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    .line 190
    const-class v0, Lcom/dolphin/browser/core/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/dolphin/browser/core/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/core/z;-><init>(Lcom/dolphin/browser/core/u;)V

    sput-object v0, Lcom/dolphin/browser/core/t;->k:Lcom/dolphin/browser/core/z;

    .line 208
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/dolphin/browser/core/t;->k:Lcom/dolphin/browser/core/z;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IBrowserSettings;->addObserver(Ljava/util/Observer;)V

    .line 210
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/IBrowserSettings;)V

    .line 211
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/Cursor;Lcom/dolphin/browser/core/aa;)V
    .locals 5

    .prologue
    .line 646
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/t;->h()V

    .line 651
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 652
    invoke-static {p0}, Lcom/dolphin/browser/core/t;->a(Landroid/content/Context;)Z

    move-result v2

    .line 653
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    :cond_2
    :try_start_0
    invoke-interface {p2, p1}, Lcom/dolphin/browser/core/aa;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    .line 668
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 671
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 660
    :cond_4
    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/core/t;->b(Ljava/lang/String;J)V

    .line 661
    if-eqz v2, :cond_3

    .line 662
    const-wide/16 v3, 0x5dc

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v0

    .line 666
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static a(Lcom/dolphin/browser/core/IBrowserSettings;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    :try_start_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/IBrowserSettings;->isDNSPrefetchEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/dolphin/browser/core/t;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lcom/dolphin/browser/core/IBrowserSettings;->isPreconnectEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/dolphin/browser/core/t;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_1
    :try_start_2
    invoke-interface {p0}, Lcom/dolphin/browser/core/IBrowserSettings;->getPreloadStrategy()I

    move-result v0

    sput v0, Lcom/dolphin/browser/core/t;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_2
    :try_start_3
    invoke-interface {p0}, Lcom/dolphin/browser/core/IBrowserSettings;->getPrefetchStrategy()I

    move-result v0

    sput v0, Lcom/dolphin/browser/core/t;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 234
    :goto_3
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sput-boolean v1, Lcom/dolphin/browser/core/t;->e:Z

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 222
    sput-boolean v1, Lcom/dolphin/browser/core/t;->f:Z

    goto :goto_1

    .line 226
    :catch_2
    move-exception v0

    .line 227
    sput v1, Lcom/dolphin/browser/core/t;->c:I

    goto :goto_2

    .line 231
    :catch_3
    move-exception v0

    .line 232
    sput v1, Lcom/dolphin/browser/core/t;->d:I

    goto :goto_3
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 463
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/core/n;

    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    check-cast p0, Lcom/dolphin/browser/core/n;

    .line 468
    const/16 v0, 0x301

    invoke-static {p0, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z

    move-result v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    const/16 v0, 0x304

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    goto :goto_0
.end method

.method private static final a(Lcom/dolphin/browser/core/ITab;IZ)V
    .locals 1

    .prologue
    .line 540
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;Z)V
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/dolphin/browser/core/t;->b:Lcom/dolphin/browser/core/x;

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/x;Z)Z

    .line 480
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/t;->h()V

    .line 346
    sget-object v0, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v1, "Prefetch web page: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 347
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/INetworkPredictor;->prefetchWebPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    sget-object v1, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v2, "Failed to prefetch web page %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    :catch_1
    move-exception v0

    goto :goto_0

    .line 348
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget-object v0, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v1, "Schedule prefetch web page: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    const/16 v1, 0x4002

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 303
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_2

    .line 304
    sget-object v1, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 306
    :cond_2
    sget-object v1, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Lcom/dolphin/browser/core/t;->h()V

    .line 629
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/core/INetworkPredictor;->anticipateAddressBar(Ljava/lang/String;Z)V

    .line 630
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 282
    if-nez p0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/util/bt;->b(Landroid/content/Context;)Z

    move-result v1

    .line 286
    const/4 v2, 0x2

    sget v3, Lcom/dolphin/browser/core/t;->d:I

    if-eq v2, v3, :cond_1

    sget v2, Lcom/dolphin/browser/core/t;->d:I

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(Lcom/dolphin/browser/core/ITab;I)Z
    .locals 2

    .prologue
    .line 535
    invoke-interface {p0, p1}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/x;Z)Z
    .locals 12

    .prologue
    const/16 v11, 0x305

    const/16 v10, 0x303

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 483
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/core/n;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 519
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    .line 487
    check-cast v0, Lcom/dolphin/browser/core/n;

    .line 488
    invoke-virtual {v0, v10}, Lcom/dolphin/browser/core/n;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/WebViewTab;

    .line 489
    if-eqz v1, :cond_3

    .line 490
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v4

    .line 491
    new-array v5, v2, [Lcom/dolphin/browser/core/ITab;

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/core/TabManager;->a([Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 492
    invoke-interface {p1, v4, p0, v1, p2}, Lcom/dolphin/browser/core/x;->a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)V

    .line 493
    invoke-virtual {v0}, Lcom/dolphin/browser/core/n;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {v0}, Lcom/dolphin/browser/core/n;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 495
    sget-object v5, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v6, "Open preloaded page in new tab. (URL=%s, backgroud=%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v5

    .line 497
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/dolphin/browser/core/IBrowserSettings;->isPrivateBrowsing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 499
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 500
    invoke-static {v5, v1, v4}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_2
    invoke-virtual {v0, v11}, Lcom/dolphin/browser/core/n;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    const/16 v4, 0x301

    invoke-static {v0, v4, v3}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 507
    const/16 v4, 0x304

    invoke-static {v0, v4, v2}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 508
    invoke-virtual {v0, v10, v9}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    .line 509
    const/16 v4, 0x302

    invoke-virtual {v0, v4, v9}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    .line 510
    invoke-virtual {v0, v11, v9}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    .line 512
    const-string v0, "networkboost"

    const-string v4, "preload"

    const-string v5, "hit"

    invoke-static {v0, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "networkboost"

    const-string v4, "preload"

    const-string v5, "hit_%s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 517
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 519
    goto/16 :goto_0
.end method

.method public static final a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 523
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    const/16 v1, 0x301

    invoke-static {p0, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z

    move-result v1

    .line 527
    if-eqz v1, :cond_0

    .line 528
    const/16 v0, 0x302

    invoke-interface {p0, v0}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 529
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .prologue
    .line 380
    new-instance v0, Lcom/dolphin/browser/core/y;

    const-wide/16 v1, 0x5dc

    div-int/lit8 v3, p2, 0x4

    int-to-long v3, v3

    sub-long v3, v1, v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/core/y;-><init>(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/y;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 392
    new-instance v0, Lcom/dolphin/browser/core/y;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/core/y;-><init>(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/y;)Z

    move-result v0

    return v0
.end method

.method public static final a(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 551
    if-nez p0, :cond_0

    move v0, v1

    .line 567
    :goto_0
    return v0

    .line 554
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 555
    if-eqz v2, :cond_1

    instance-of v0, v2, Lcom/dolphin/browser/core/n;

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 556
    goto :goto_0

    .line 559
    :cond_2
    const/16 v0, 0x303

    :try_start_0
    invoke-interface {v2, v0}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/WebViewTab;

    .line 560
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/WebViewTab;->containsWebView(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    const/16 v0, 0x301

    invoke-static {v2, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    sget-object v2, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move v0, v1

    .line 567
    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/y;)Z
    .locals 9

    .prologue
    const/16 v8, 0x4001

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    if-nez p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/core/y;->a:Lcom/dolphin/browser/core/ITab;

    .line 406
    iget-object v3, p0, Lcom/dolphin/browser/core/y;->b:Ljava/lang/String;

    .line 407
    iget-wide v4, p0, Lcom/dolphin/browser/core/y;->c:J

    .line 408
    if-eqz v2, :cond_0

    .line 411
    sget-object v2, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    sget-object v2, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v6, "Schedule preload: %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-static {v2, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v0, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 415
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 416
    sget-object v2, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    move v0, v1

    .line 420
    goto :goto_0

    .line 418
    :cond_2
    sget-object v2, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 266
    if-ne p0, p1, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {p0}, Lcom/dolphin/browser/util/BrowserUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {p1}, Lcom/dolphin/browser/util/BrowserUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    .line 251
    :cond_0
    return-void
.end method

.method public static b(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/dolphin/browser/core/t;->a:Lcom/dolphin/browser/core/x;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/x;Z)Z

    .line 476
    return-void
.end method

.method public static b(Lcom/dolphin/browser/core/y;)V
    .locals 11

    .prologue
    const/16 v5, 0x303

    const/16 v10, 0x302

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 432
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/core/y;->a:Lcom/dolphin/browser/core/ITab;

    .line 436
    iget-object v4, p0, Lcom/dolphin/browser/core/y;->b:Ljava/lang/String;

    .line 437
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/dolphin/browser/core/n;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 441
    check-cast v0, Lcom/dolphin/browser/core/n;

    .line 442
    invoke-virtual {v0, v10}, Lcom/dolphin/browser/core/n;->getData(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    if-eqz v2, :cond_2

    invoke-static {v2, v4}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    :cond_2
    const/16 v3, 0x301

    invoke-static {v0, v3, v9}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 445
    const/16 v3, 0x304

    invoke-static {v0, v3, v8}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 446
    invoke-virtual {v0, v5}, Lcom/dolphin/browser/core/n;->getData(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/core/WebViewTab;

    .line 447
    if-eqz v3, :cond_3

    .line 448
    sget-object v5, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v6, "Cancel previous loading url: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    invoke-virtual {v3}, Lcom/dolphin/browser/core/WebViewTab;->stopLoading()V

    .line 450
    invoke-virtual {v3}, Lcom/dolphin/browser/core/WebViewTab;->clearContentAndHistory()V

    .line 455
    :goto_1
    sget-object v2, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    const-string v5, "Preload: %s on %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v1, v6, v9

    invoke-static {v2, v5, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 456
    invoke-virtual {v0, v10, v4}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    .line 457
    const/16 v1, 0x305

    iget-object v2, p0, Lcom/dolphin/browser/core/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    .line 458
    invoke-virtual {v3, v4}, Lcom/dolphin/browser/core/WebViewTab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->m()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/core/WebViewTab;

    .line 453
    invoke-virtual {v0, v5, v2}, Lcom/dolphin/browser/core/n;->setData(ILjava/lang/Object;)V

    move-object v3, v2

    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcom/dolphin/browser/core/t;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 676
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 677
    invoke-static {p0}, Lcom/dolphin/browser/core/t;->c(Ljava/lang/String;)V

    .line 682
    :goto_0
    return-void

    .line 679
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    const/16 v1, 0x4003

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 680
    sget-object v1, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 362
    if-nez p0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/util/bt;->b(Landroid/content/Context;)Z

    move-result v1

    .line 366
    const/4 v2, 0x2

    sget v3, Lcom/dolphin/browser/core/t;->c:I

    if-eq v2, v3, :cond_1

    sget v2, Lcom/dolphin/browser/core/t;->c:I

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 578
    if-nez p0, :cond_0

    move v0, v1

    .line 594
    :goto_0
    return v0

    .line 581
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 582
    if-eqz v2, :cond_1

    instance-of v0, v2, Lcom/dolphin/browser/core/n;

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 583
    goto :goto_0

    .line 586
    :cond_2
    const/16 v0, 0x303

    :try_start_0
    invoke-interface {v2, v0}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/WebViewTab;

    .line 587
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/WebViewTab;->containsWebView(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    const/16 v0, 0x304

    invoke-static {v2, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 592
    sget-object v2, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move v0, v1

    .line 594
    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    const/16 v1, 0x4002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 685
    invoke-static {}, Lcom/dolphin/browser/core/t;->h()V

    .line 686
    sget-boolean v0, Lcom/dolphin/browser/core/t;->f:Z

    if-eqz v0, :cond_1

    .line 687
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/INetworkPredictor;->preconnect(Ljava/lang/String;)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    sget-boolean v0, Lcom/dolphin/browser/core/t;->e:Z

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/dolphin/browser/util/URIUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/INetworkPredictor;->prefetchDNS([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final c(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 544
    if-nez p0, :cond_0

    .line 545
    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x301

    invoke-static {p0, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d()Lcom/dolphin/browser/core/INetworkPredictor;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    return-object v0
.end method

.method public static final d(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 571
    if-nez p0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 574
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x304

    invoke-static {p0, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e()Lcom/dolphin/browser/core/IResourceHandler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dolphin/browser/core/t;->h:Lcom/dolphin/browser/core/IResourceHandler;

    return-object v0
.end method

.method public static final e(Lcom/dolphin/browser/core/ITab;)V
    .locals 6

    .prologue
    const/16 v4, 0x305

    const/16 v3, 0x303

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 599
    sget-object v0, Lcom/dolphin/browser/core/t;->i:Landroid/os/Handler;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/core/n;

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-interface {p0, v3}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/WebViewTab;

    .line 604
    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewTab;->stopLoading()V

    .line 606
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewTab;->clearContentAndHistory()V

    .line 607
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewTab;->destroy()V

    .line 609
    :cond_2
    invoke-interface {p0, v4}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 610
    const/16 v1, 0x301

    invoke-static {p0, v1, v5}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 611
    const/16 v1, 0x302

    invoke-interface {p0, v1, v2}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 612
    invoke-interface {p0, v3, v2}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 613
    const/16 v1, 0x304

    invoke-static {p0, v1, v5}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;IZ)V

    .line 614
    invoke-interface {p0, v4, v2}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 615
    if-eqz v0, :cond_0

    .line 616
    const-string v1, "networkboost"

    const-string v2, "preload"

    const-string v3, "missed"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "networkboost"

    const-string v2, "preload"

    const-string v3, "missed_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/dolphin/browser/core/t;->h()V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dolphin/browser/core/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/dolphin/browser/core/t;->b()V

    .line 242
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPredictor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/dolphin/browser/core/t;->g:Lcom/dolphin/browser/core/INetworkPredictor;

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPredictor;->start()V

    .line 245
    :cond_0
    return-void
.end method
