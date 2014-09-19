.class public Lcom/fusepowered/m2/m2l/util/WebViews;
.super Ljava/lang/Object;
.source "WebViews.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MoPub - WebViewsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPause(Landroid/webkit/WebView;)V
    .locals 5
    .parameter "webView"

    .prologue
    .line 48
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, onPause:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1           #onPause:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 52
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static onResume(Landroid/webkit/WebView;)V
    .locals 5
    .parameter "webView"

    .prologue
    .line 58
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "onResume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, onResume:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #onResume:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static setDisableJSChromeClient(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 67
    new-instance v0, Lcom/fusepowered/m2/m2l/util/WebViews$1;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/util/WebViews$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 92
    return-void
.end method
