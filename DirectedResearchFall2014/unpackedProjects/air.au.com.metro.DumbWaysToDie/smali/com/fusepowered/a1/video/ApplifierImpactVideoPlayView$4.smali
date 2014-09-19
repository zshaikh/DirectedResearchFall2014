.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string v0, "onPrepared"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #setter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$22(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Landroid/media/MediaPlayer;)V

    .line 252
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$23(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->storeVolume()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$24(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 254
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$25(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x1

    #setter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z
    invoke-static {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$26(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Z)V

    .line 258
    return-void
.end method
