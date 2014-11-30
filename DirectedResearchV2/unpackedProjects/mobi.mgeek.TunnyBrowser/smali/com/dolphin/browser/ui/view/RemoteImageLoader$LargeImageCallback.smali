.class public interface abstract Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# virtual methods
.method public abstract onDownloadProgressChanged(JJ)V
.end method

.method public abstract onGifLoaded(Landroid/net/Uri;)V
.end method

.method public abstract onLargeImageDetected(Landroid/net/Uri;)V
.end method
