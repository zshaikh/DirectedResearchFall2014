.class public interface abstract Lcom/dolphin/browser/core/IWebBackForwardList;
.super Ljava/lang/Object;
.source "IWebBackForwardList.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentItem()Lcom/dolphin/browser/core/IWebHistoryItem;
.end method

.method public abstract getItemAtIndex(I)Lcom/dolphin/browser/core/IWebHistoryItem;
.end method

.method public abstract getSize()I
.end method
