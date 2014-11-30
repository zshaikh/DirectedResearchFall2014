.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->pauseVideo()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 118
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 119
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddPausedView()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$21(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 120
    return-void
.end method
