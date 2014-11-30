.class Lcom/dolphin/browser/androidwebkit/v;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Landroid/widget/ZoomButtonsController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/v;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ZoomButtonsController;
    .locals 3

    .prologue
    .line 227
    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetZoomButtonsController:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetZoomButtonsController:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/v;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButtonsController;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :catch_2
    move-exception v0

    .line 236
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/v;->a()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    return-object v0
.end method
