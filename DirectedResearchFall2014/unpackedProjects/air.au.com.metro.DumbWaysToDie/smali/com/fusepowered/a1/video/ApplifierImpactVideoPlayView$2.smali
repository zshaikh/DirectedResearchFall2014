.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->pauseVideo()V
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$0(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 118
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 119
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddPausedView()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$21(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 120
    return-void
.end method
