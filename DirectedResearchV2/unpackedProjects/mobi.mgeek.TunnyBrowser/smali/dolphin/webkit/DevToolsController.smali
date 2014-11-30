.class public Ldolphin/webkit/DevToolsController;
.super Ljava/lang/Object;
.source "DevToolsController.java"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/webkit/DevToolsController;->a:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/DevToolsController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "0.0.0.0"

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-boolean v1, Ldolphin/webkit/DevToolsController;->a:Z

    if-eqz v1, :cond_2

    sget-object v1, Ldolphin/webkit/DevToolsController;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    :cond_2
    const/16 v1, 0xd05

    const-string v2, "http://10.2.7.245/userContent/devtools/inspector.html"

    invoke-static {v0, v1, v2}, Ldolphin/webkit/DevToolsController;->nativeStartDevToolsServer(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    sput-boolean v1, Ldolphin/webkit/DevToolsController;->a:Z

    .line 50
    sput-object v0, Ldolphin/webkit/DevToolsController;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ldolphin/webkit/WebView;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ldolphin/webkit/JniUtil;->enableDevTools()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/DevToolsController;->a(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getWebViewCore()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->getNativeClass()I

    move-result v0

    invoke-static {v0}, Ldolphin/webkit/DevToolsController;->nativeUpdateInspectableWebView(I)V

    goto :goto_0
.end method

.method private static native nativeStartDevToolsServer(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeStopDevToolsServer()V
.end method

.method private static native nativeUpdateInspectableWebView(I)V
.end method
