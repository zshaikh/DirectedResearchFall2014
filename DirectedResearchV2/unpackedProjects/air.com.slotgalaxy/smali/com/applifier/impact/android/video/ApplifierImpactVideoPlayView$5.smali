.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$27(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 325
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->startVideo()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$28(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 327
    :cond_0
    return-void
.end method
