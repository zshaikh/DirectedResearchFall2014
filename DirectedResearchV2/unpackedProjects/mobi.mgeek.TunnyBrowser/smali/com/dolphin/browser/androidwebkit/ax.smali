.class Lcom/dolphin/browser/androidwebkit/ax;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ax;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/ax;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1700
    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageNames:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$1400()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1702
    :try_start_0
    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageNames:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$1400()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ax;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/ax;->a:Ljava/util/Set;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1705
    :catch_1
    move-exception v0

    .line 1706
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :catch_2
    move-exception v0

    .line 1708
    const-string v1, "MyWebViewWrapper"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
