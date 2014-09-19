.class Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadRunnable"
.end annotation


# instance fields
.field private inlineVideoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/InlineVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/InlineVideoView;)V
    .locals 1
    .parameter "videoView"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 252
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/InlineVideoView;

    .line 258
    .local v0, inlineView:Lcom/fusepowered/m1/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->downloadVideo()V

    .line 262
    :cond_0
    return-void
.end method
