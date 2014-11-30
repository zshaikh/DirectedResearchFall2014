.class public Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;
.super Ljava/lang/Object;
.source "WebIconDatabaseWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebIconDatabase;


# instance fields
.field private mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ldolphin/webkit/WebIconDatabase;->getInstance()Ldolphin/webkit/WebIconDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebIconDatabase;->close()V

    .line 46
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public removeAllIcons()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebIconDatabase;->removeAllIcons()V

    .line 51
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper$IconListenerWrapper;

    invoke-direct {v1, p2}, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper$IconListenerWrapper;-><init>(Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/WebIconDatabase;->requestIconForPageUrl(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V

    .line 56
    return-void
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Ldolphin/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 75
    return-void
.end method
