.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$6(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$2(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$7(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$6(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You can skip this video in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v2}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v2

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I
    invoke-static {v2}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    invoke-static {v3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$1(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x447a0000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_0
    return-void
.end method