.class Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPreparedListener"
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
    .param p1, "videoView"    # Lcom/fusepowered/m1/android/InlineVideoView;

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 743
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/InlineVideoView;

    .line 754
    .local v0, "inlineView":Lcom/fusepowered/m1/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 758
    :cond_0
    return-void
.end method
