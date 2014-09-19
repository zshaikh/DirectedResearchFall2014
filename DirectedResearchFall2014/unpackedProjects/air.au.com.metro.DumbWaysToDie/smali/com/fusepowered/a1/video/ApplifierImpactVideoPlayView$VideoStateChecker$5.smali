.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;
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
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 670
    const-string v0, "Buffering taking too long.. cancelling video play"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;->this$1:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->videoErrorOperations()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$12(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 672
    return-void
.end method
