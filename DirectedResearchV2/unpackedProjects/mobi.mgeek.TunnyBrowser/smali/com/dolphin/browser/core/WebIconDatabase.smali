.class public Lcom/dolphin/browser/core/WebIconDatabase;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/core/IWebIconDatabase;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->d()Lcom/dolphin/browser/core/IWebIconDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/core/bi;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebIconDatabase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/WebIconDatabase;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/dolphin/browser/core/bj;->a()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->b:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebIconDatabase;->close()V

    .line 86
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "WebIconDatabase"

    const-string v1, "%s is already opened"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebIconDatabase;->close()V

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/core/WebIconDatabase;->b:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebIconDatabase;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public removeAllIcons()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebIconDatabase;->removeAllIcons()V

    .line 93
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebIconDatabase;->requestIconForPageUrl(Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V

    .line 103
    return-void
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/core/WebIconDatabase;->a:Lcom/dolphin/browser/core/IWebIconDatabase;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 111
    return-void
.end method
