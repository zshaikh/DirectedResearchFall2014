.class Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCompletionListener"
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
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 704
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 709
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/InlineVideoView;

    .line 710
    .local v0, "inlineView":Lcom/fusepowered/m1/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 715
    :cond_0
    return-void
.end method
