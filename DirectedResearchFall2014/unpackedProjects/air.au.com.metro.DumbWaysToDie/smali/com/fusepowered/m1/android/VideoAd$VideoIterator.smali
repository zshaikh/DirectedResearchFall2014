.class Lcom/fusepowered/m1/android/VideoAd$VideoIterator;
.super Lcom/fusepowered/m1/android/AdCache$Iterator;
.source "VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/VideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoIterator"
.end annotation


# instance fields
.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field hasSharedVideoFile:Z

.field private videoAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m1/android/VideoAd;)V
    .locals 1
    .parameter "context"
    .parameter "videoAd"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdCache$Iterator;-><init>()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    .line 365
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    .line 366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->contextRef:Ljava/lang/ref/WeakReference;

    .line 367
    return-void
.end method


# virtual methods
.method callback(Lcom/fusepowered/m1/android/CachedAd;)Z
    .locals 5
    .parameter "cachedAd"

    .prologue
    .line 375
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v3, :cond_0

    .line 377
    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    move-object v2, v0

    .line 378
    .local v2, videoAd:Lcom/fusepowered/m1/android/VideoAd;
    iget-object v3, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoAd;

    .line 379
    .local v1, requestingVideoAd:Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v1, :cond_0

    .line 381
    #getter for: Lcom/fusepowered/m1/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/m1/android/VideoAd;->access$000(Lcom/fusepowered/m1/android/VideoAd;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/fusepowered/m1/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/m1/android/VideoAd;->access$000(Lcom/fusepowered/m1/android/VideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    .line 387
    .end local v1           #requestingVideoAd:Lcom/fusepowered/m1/android/VideoAd;
    .end local v2           #videoAd:Lcom/fusepowered/m1/android/VideoAd;
    :cond_0
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/AdCache$Iterator;->callback(Lcom/fusepowered/m1/android/CachedAd;)Z

    move-result v3

    return v3
.end method

.method deleteVideoFile(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    .line 407
    .local v0, requestingVideoAd:Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v0, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/fusepowered/m1/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/m1/android/VideoAd;->access$000(Lcom/fusepowered/m1/android/VideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fusepowered/m1/android/AdCache;->deleteFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "VideoAd video file %s was deleted."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    #getter for: Lcom/fusepowered/m1/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/m1/android/VideoAd;->access$000(Lcom/fusepowered/m1/android/VideoAd;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_0
    return-void
.end method

.method done()V
    .locals 2

    .prologue
    .line 393
    iget-boolean v1, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 396
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/VideoAd$VideoIterator;->deleteVideoFile(Landroid/content/Context;)V

    .line 401
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m1/android/AdCache$Iterator;->done()V

    .line 402
    return-void
.end method
