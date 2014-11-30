.class public Lcom/dolphin/browser/addons/bi;
.super Lcom/dolphin/browser/addons/an;
.source "WebBackForwardListImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/IWebBackForwardList;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebBackForwardList;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/addons/an;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    .line 30
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebHistoryItem;->getId()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/addons/bi;->a:Lcom/dolphin/browser/core/IWebBackForwardList;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
