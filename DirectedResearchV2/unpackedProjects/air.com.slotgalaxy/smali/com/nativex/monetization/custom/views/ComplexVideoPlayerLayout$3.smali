.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 524
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const/4 v1, 0x1

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z
    invoke-static {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$202(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 530
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1700(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1700(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 537
    return-void
.end method
