.class public Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;
.super Ljava/lang/Object;
.source "WebIconDatabaseWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebIconDatabase;


# instance fields
.field private mWebIconDatabase:Landroid/webkit/WebIconDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->close()V

    .line 45
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public removeAllIcons()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 50
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper$IconListenerWrapper;

    invoke-direct {v1, p2}, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper$IconListenerWrapper;-><init>(Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebIconDatabase;->requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 55
    return-void
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper;->mWebIconDatabase:Landroid/webkit/WebIconDatabase;

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method
