.class Lcom/dolphin/browser/extensions/bf;
.super Ljava/lang/Object;
.source "RemoteAddon.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IAddonBarExtention2;
.implements Lcom/dolphin/browser/extensions/IAddonBarExtention;
.implements Lcom/dolphin/browser/extensions/IBaseExtension;
.implements Lcom/dolphin/browser/extensions/IBrowserExtension;
.implements Lcom/dolphin/browser/extensions/ITitleBarExtension;
.implements Lcom/dolphin/browser/extensions/IWebViewExtension;
.implements Lcom/dolphin/browser/extensions/IWebViewPageExtension;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/bd;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/extensions/bd;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/extensions/be;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/bf;-><init>(Lcom/dolphin/browser/extensions/bd;)V

    return-void
.end method


# virtual methods
.method public getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_0

    .line 294
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddonBarIconNumber()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/l;->b()I

    move-result v0

    .line 277
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v4, "com.dolphin.browser.permission.ADDON_BAR_BADGE"

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public getAddonBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/l;->e()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.TITLE_BAR_ACTION"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0, p3}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    .line 547
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 548
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 550
    new-instance v1, Lcom/dolphin/browser/extensions/bg;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/extensions/bg;-><init>(Lcom/dolphin/browser/extensions/bf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    invoke-static {}, Lcom/dolphin/browser/extensions/bd;->w()I

    move-result v1

    invoke-static {}, Lcom/dolphin/browser/extensions/bd;->w()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onAddonClick(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/l;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateHandler()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onDisable()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Z)V

    .line 353
    return-void
.end method

.method public onDownloadEnded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 476
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.MANAGE_DOWNLOADS"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    new-instance v7, Lcom/dolphin/browser/addons/DownloadInfo;

    invoke-direct {v7}, Lcom/dolphin/browser/addons/DownloadInfo;-><init>()V

    .line 480
    const/4 v6, 0x0

    .line 482
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "uri"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "hint"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "visibility"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "cookiedata"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "useragent"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "referer"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "total_bytes"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "title"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "description"

    aput-object v4, v2, v3

    const-string v3, "uri=? AND _data=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 490
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/dolphin/browser/addons/DownloadInfo;->a:J

    .line 492
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->b:Ljava/lang/String;

    .line 493
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->c:Ljava/lang/String;

    .line 494
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->d:Ljava/lang/String;

    .line 495
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->e:Ljava/lang/String;

    .line 496
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->f:I

    .line 497
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->g:I

    .line 498
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->h:Ljava/lang/String;

    .line 499
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->i:Ljava/lang/String;

    .line 500
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->j:Ljava/lang/String;

    .line 501
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->k:I

    .line 502
    const/16 v0, 0xb

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->l:Ljava/lang/String;

    .line 503
    const/16 v0, 0xc

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/dolphin/browser/addons/DownloadInfo;->m:Ljava/lang/String;

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->d(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/dolphin/browser/addons/x;->a(Lcom/dolphin/browser/addons/DownloadInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 510
    if-eqz v1, :cond_0

    .line 512
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 513
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 506
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 507
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    if-eqz v1, :cond_0

    .line 512
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 513
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 510
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 512
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 514
    :cond_3
    :goto_3
    throw v0

    .line 513
    :catch_3
    move-exception v1

    goto :goto_3

    .line 510
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 506
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 463
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.MANAGE_DOWNLOADS"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 471
    :goto_0
    return v0

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->d(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/dolphin/browser/addons/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v7

    .line 471
    goto :goto_0
.end method

.method public onEnable()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Z)V

    .line 348
    return-void
.end method

.method public onExtensionClick(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->e(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/r;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->e(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/r;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWebViewCreated(Lcom/dolphin/browser/core/IWebView;)V
    .locals 3

    .prologue
    .line 449
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 453
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->c(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/av;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/av;->a(Lcom/dolphin/browser/addons/as;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postOnPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->b(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/ay;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/addons/ay;->c(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public postOnUpdateWebSettings(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 3

    .prologue
    .line 439
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.MODIFY_WEB_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->c(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/av;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/bj;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/addons/bj;-><init>(Lcom/dolphin/browser/core/IWebSettings;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/av;->a(Lcom/dolphin/browser/addons/ap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->b(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/ay;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/addons/ay;->a(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postReceiveTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 390
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->b(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/ay;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    invoke-interface {v0, v1, p3}, Lcom/dolphin/browser/addons/ay;->b(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public preOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v3, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v3, "com.dolphin.browser.permission.HANDLE_HTTP_AUTH_REQUEST"

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/bd;->b(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/ay;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v2, p1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    new-instance v3, Lcom/dolphin/browser/addons/k;

    invoke-direct {v3, p2}, Lcom/dolphin/browser/addons/k;-><init>(Lcom/dolphin/browser/core/IHttpAuthHandler;)V

    invoke-interface {v1, v2, v3, p3, p4}, Lcom/dolphin/browser/addons/ay;->a(Lcom/dolphin/browser/addons/as;Lcom/dolphin/browser/addons/aa;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshConfig()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public shouldHideFavicon(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public updateTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    .line 572
    :try_start_0
    invoke-interface {p3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/bd;->g(Lcom/dolphin/browser/extensions/bd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/bd;->f(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/aj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/addons/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    const-string v2, "com.dolphin.browser.permission.TITLE_BAR_ACTION"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 596
    :cond_1
    :goto_1
    return-void

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 585
    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/bd;->h(Lcom/dolphin/browser/extensions/bd;)Z

    .line 587
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/bd;->i(Lcom/dolphin/browser/extensions/bd;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_3

    .line 589
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 590
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 592
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wantToShowInAddonBar()Z
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/l;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method
