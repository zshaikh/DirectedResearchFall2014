.class public interface abstract Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# virtual methods
.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onImageLoadFailed(Ljava/lang/String;)V
.end method

.method public abstract onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
