.class public interface abstract Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
.super Ljava/lang/Object;
.source "IApplifierImpactVideoPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/fusepowered/a1/view/IApplifierImpactViewListener;


# virtual methods
.method public abstract onEventPositionReached(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
.end method

.method public abstract onVideoPlaybackError()V
.end method

.method public abstract onVideoPlaybackStarted()V
.end method

.method public abstract onVideoSkip()V
.end method
