.class Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;
.super Ljava/lang/Object;
.source "WebBackForwardListWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebHistoryItem;


# instance fields
.field private final mItem:Landroid/webkit/WebHistoryItem;


# direct methods
.method public constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getId()I

    move-result v0

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
