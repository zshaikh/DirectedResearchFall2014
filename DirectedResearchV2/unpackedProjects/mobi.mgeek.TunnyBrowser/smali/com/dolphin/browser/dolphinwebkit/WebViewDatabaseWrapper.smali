.class public Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;
.super Ljava/lang/Object;
.source "WebViewDatabaseWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewDatabase;


# instance fields
.field private mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ldolphin/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Ldolphin/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    .line 35
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearCookies()V

    .line 70
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearFormData()V

    .line 65
    return-void
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 55
    return-void
.end method

.method public clearUsernamePassword()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 45
    return-void
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebViewDatabaseWrapper;->mWebViewDatabase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    return v0
.end method
