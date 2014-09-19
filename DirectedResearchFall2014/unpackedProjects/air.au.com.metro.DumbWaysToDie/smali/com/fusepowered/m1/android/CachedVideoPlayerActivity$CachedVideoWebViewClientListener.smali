.class Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;
.super Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedVideoWebViewClientListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 368
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ ON PAGE FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    .line 375
    .local v0, activity:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 377
    #calls: Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->onPageFinished(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->access$000(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method
