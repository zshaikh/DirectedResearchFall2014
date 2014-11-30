.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 750
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 751
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 752
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 753
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 754
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 755
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 756
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 757
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const/4 v1, 0x1

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z
    invoke-static {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$002(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoLayout: buffered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I
    invoke-static {v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1900(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccured:Z
    invoke-static {v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;->videoCompleted(Landroid/media/MediaPlayer;Z)V

    .line 762
    :cond_0
    return-void
.end method
