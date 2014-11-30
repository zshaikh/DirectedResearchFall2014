.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$8;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V
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
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$8;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    const-string v0, "Touching the skiptext"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$8;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$10(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;->onVideoSkip()V

    .line 425
    return-void
.end method
