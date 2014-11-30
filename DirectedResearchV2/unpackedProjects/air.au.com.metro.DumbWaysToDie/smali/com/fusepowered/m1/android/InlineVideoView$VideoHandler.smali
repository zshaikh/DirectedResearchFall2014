.class Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;
.super Landroid/os/Handler;
.source "InlineVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoHandler"
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
    .line 425
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 426
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 427
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 432
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/InlineVideoView;

    .line 436
    .local v0, "inlineView":Lcom/fusepowered/m1/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->updateVideoSeekTime()V

    .line 442
    :cond_1
    iget-object v1, v0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
