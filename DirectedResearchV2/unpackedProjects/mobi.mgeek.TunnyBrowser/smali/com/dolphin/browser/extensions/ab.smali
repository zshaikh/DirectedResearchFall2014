.class final Lcom/dolphin/browser/extensions/ab;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IBrowserMenuExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
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
            "Lcom/dolphin/browser/extensions/IBrowserMenuExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 528
    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ab;->a()Ljava/util/Set;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    .line 540
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->onCreateOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ab;->a()Ljava/util/Set;

    move-result-object v1

    .line 553
    const/4 v0, 0x0

    .line 554
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    .line 556
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->onOptionsItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 557
    if-eqz v0, :cond_0

    .line 564
    :goto_1
    return v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    :cond_0
    move v1, v0

    .line 562
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ab;->a()Ljava/util/Set;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    .line 575
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->onPrepareOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 580
    :cond_0
    return-void
.end method
