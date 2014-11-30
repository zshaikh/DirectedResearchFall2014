.class Lcom/voxel/sdk/PlayerEngine$3;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$3;->this$0:Lcom/voxel/sdk/PlayerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$3;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$500(Lcom/voxel/sdk/PlayerEngine;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$3;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$500(Lcom/voxel/sdk/PlayerEngine;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$3;->this$0:Lcom/voxel/sdk/PlayerEngine;

    const/4 v2, 0x0

    # setter for: Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v1, v2}, Lcom/voxel/sdk/PlayerEngine;->access$502(Lcom/voxel/sdk/PlayerEngine;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 192
    .local v0, "ex":Ljava/lang/IllegalStateException;
    # getter for: Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/PlayerEngine;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error stopping audiotrack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
