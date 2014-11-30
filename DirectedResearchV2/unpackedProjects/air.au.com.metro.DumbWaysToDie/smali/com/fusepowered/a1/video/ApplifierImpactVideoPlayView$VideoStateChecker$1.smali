.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;
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
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$1(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$1(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I
    invoke-static {v2}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$0(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :cond_0
    return-void
.end method
