.class public Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;
.super Ljava/lang/Object;
.source "WebViewDatabaseWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewDatabase;


# static fields
.field private static clearCookiesMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWebViewDatabase:Landroid/webkit/WebViewDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    .line 37
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->clearCookiesMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 74
    const-class v0, Landroid/webkit/WebViewDatabase;

    const-string v1, "clearCookies"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->clearCookiesMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->clearCookiesMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->clearCookiesMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 67
    return-void
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 57
    return-void
.end method

.method public clearUsernamePassword()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 47
    return-void
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    return v0
.end method
