.class Lcom/fusepowered/m2/m2l/VastVideoView$2;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field private final synthetic val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/VastVideoView;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$2;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$2;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    # invokes: Lcom/fusepowered/m2/m2l/VastVideoView;->stopProgressChecker()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$0(Lcom/fusepowered/m2/m2l/VastVideoView;)V

    .line 125
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->videoError(Z)V

    .line 129
    :cond_0
    return v1
.end method
