.class final Lcom/dolphin/browser/extensions/aa;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IBrowserExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/IBrowserExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IBrowserExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 428
    return-object v0
.end method


# virtual methods
.method public onDownloadEnded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aa;->a()Ljava/util/Set;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserExtension;

    .line 460
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onDownloadEnded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method

.method public onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aa;->a()Ljava/util/Set;

    move-result-object v1

    .line 438
    const/4 v0, 0x0

    .line 439
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    .line 441
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 442
    if-eqz v0, :cond_0

    .line 449
    :goto_1
    return v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v8

    :cond_0
    move v8, v0

    .line 447
    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aa;->a()Ljava/util/Set;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserExtension;

    .line 475
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aa;->a()Ljava/util/Set;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserExtension;

    .line 490
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method
