.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 689
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideBufferingView()V
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$15(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 690
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$16(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$10(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 692
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #setter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z
    invoke-static {v3, v7}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$17(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Z)V

    .line 693
    const-string v3, "onVideoPlaybackStarted sent to listener"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$10(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;->onVideoPlaybackStarted()V

    .line 695
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J
    invoke-static {v3, v4, v5}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$18(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;J)V

    .line 696
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J
    invoke-static {v3, v4, v5}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$19(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;J)V

    .line 697
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$20(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v5}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v5

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v5}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$11(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 698
    .local v0, bufferingDuration:J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 699
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoPlay(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 703
    .end local v0           #bufferingDuration:J
    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$9(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$9(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$10(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v3, v4}, Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 708
    :cond_1
    return-void
.end method
