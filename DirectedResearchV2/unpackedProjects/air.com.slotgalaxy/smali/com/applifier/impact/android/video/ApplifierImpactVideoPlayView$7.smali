.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddMuteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$14(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$16(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$23(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$29(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V

    .line 360
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$30(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    move-result-object v0

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setState(Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;)V

    .line 361
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$25(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F
    invoke-static {v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$31(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)F

    move-result v1

    iget-object v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F
    invoke-static {v2}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$31(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$29(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V

    .line 365
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$30(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    move-result-object v0

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setState(Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;)V

    .line 366
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->storeVolume()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$24(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 367
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$25(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method
