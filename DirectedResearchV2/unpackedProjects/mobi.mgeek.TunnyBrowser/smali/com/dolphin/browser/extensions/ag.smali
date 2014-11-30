.class final Lcom/dolphin/browser/extensions/ag;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 379
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
            "Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 383
    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ag;->a()Ljava/util/Set;

    move-result-object v1

    .line 392
    const/4 v0, 0x0

    .line 393
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    .line 394
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->onContextItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z

    move-result v0

    .line 395
    if-eqz v0, :cond_0

    .line 399
    :cond_1
    return v0
.end method

.method public onCreateContextMenu(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ag;->a()Ljava/util/Set;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    .line 410
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->onCreateContextMenu(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method
