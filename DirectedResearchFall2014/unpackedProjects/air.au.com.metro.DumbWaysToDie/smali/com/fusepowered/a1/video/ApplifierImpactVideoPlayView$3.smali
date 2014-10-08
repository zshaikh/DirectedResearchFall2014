.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->startVideo()V
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
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$0(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 209
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 210
    return-void
.end method
