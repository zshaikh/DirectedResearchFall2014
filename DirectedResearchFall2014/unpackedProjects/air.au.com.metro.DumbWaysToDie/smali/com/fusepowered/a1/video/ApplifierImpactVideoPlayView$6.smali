.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$6;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createView()V
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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 332
    if-nez p2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->pauseVideo()V

    .line 335
    :cond_0
    return-void
.end method
