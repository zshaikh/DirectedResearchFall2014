.class Lcom/fusepowered/m1/android/PreCacheWorker$1;
.super Ljava/lang/Object;
.source "PreCacheWorker.java"

# interfaces
.implements Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/PreCacheWorker;->handleJson(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/PreCacheWorker;

.field final synthetic val$cachedVideo:Lcom/fusepowered/m1/android/DTOCachedVideo;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/PreCacheWorker;Lcom/fusepowered/m1/android/DTOCachedVideo;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->this$0:Lcom/fusepowered/m1/android/PreCacheWorker;

    iput-object p2, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->val$cachedVideo:Lcom/fusepowered/m1/android/DTOCachedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized downloadCompleted(Lcom/fusepowered/m1/android/CachedAd;Z)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 145
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->this$0:Lcom/fusepowered/m1/android/PreCacheWorker;

    # getter for: Lcom/fusepowered/m1/android/PreCacheWorker;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m1/android/PreCacheWorker;->access$000(Lcom/fusepowered/m1/android/PreCacheWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/AdCache;->save(Landroid/content/Context;Lcom/fusepowered/m1/android/CachedAd;)Z

    .line 147
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->this$0:Lcom/fusepowered/m1/android/PreCacheWorker;

    const/4 v1, 0x1

    # setter for: Lcom/fusepowered/m1/android/PreCacheWorker;->downloadedNewVideos:Z
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/PreCacheWorker;->access$102(Lcom/fusepowered/m1/android/PreCacheWorker;Z)Z

    .line 148
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->val$cachedVideo:Lcom/fusepowered/m1/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheCompleteURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 153
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->val$cachedVideo:Lcom/fusepowered/m1/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public downloadStart(Lcom/fusepowered/m1/android/CachedAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker$1;->val$cachedVideo:Lcom/fusepowered/m1/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 140
    return-void
.end method
