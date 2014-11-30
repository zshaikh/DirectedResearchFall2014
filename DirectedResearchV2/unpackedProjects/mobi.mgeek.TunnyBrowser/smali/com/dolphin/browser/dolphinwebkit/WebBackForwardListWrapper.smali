.class Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;
.super Ljava/lang/Object;
.source "WebBackForwardListWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebBackForwardList;


# instance fields
.field private final mList:Ldolphin/webkit/WebBackForwardList;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebBackForwardList;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, -0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentItem()Lcom/dolphin/browser/core/IWebHistoryItem;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v1}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;-><init>(Ldolphin/webkit/WebHistoryItem;)V

    goto :goto_0
.end method

.method public getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v1, p1}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper$WebHistoryItemWrapper;-><init>(Ldolphin/webkit/WebHistoryItem;)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;->mList:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
