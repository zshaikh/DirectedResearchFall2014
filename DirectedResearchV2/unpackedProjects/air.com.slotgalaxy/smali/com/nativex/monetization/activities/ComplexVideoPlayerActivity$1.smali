.class Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerActivity.java"

# interfaces
.implements Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private noErrorCheck(Z)Z
    .locals 1
    .param p1, "hasError"    # Z

    .prologue
    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVideoCompletedMRAID()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    # getter for: Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    invoke-static {v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->access$000(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    # getter for: Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->access$100(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    # getter for: Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->access$100(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    # getter for: Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->access$200(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42c80000

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->trackVideoProgress(Ljava/lang/String;Ljava/lang/String;F)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public videoCompleted(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "hasError"    # Z

    .prologue
    .line 67
    const-string v0, "ComplexVideoPlayerActivity: in OnCompletionListener()"

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->noErrorCheck(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->onVideoCompletedMRAID()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->finish()V

    .line 72
    return-void
.end method
