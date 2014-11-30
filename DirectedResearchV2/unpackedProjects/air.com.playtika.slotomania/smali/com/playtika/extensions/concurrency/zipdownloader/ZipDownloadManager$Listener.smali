.class public interface abstract Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
.super Ljava/lang/Object;
.source "ZipDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onLoadFail(Ljava/lang/Exception;)V
.end method

.method public abstract onOpenFail(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSuccess()V
.end method
