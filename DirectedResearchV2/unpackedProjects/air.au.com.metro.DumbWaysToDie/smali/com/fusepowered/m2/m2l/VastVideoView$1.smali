.class Lcom/fusepowered/m2/m2l/VastVideoView$1;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/VastVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/VastVideoView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/VastVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    # invokes: Lcom/fusepowered/m2/m2l/VastVideoView;->stopProgressChecker()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$0(Lcom/fusepowered/m2/m2l/VastVideoView;)V

    .line 111
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    # getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    # getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->videoCompleted(Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    # getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mCompletionTrackers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$2(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$4(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V

    .line 117
    return-void
.end method
