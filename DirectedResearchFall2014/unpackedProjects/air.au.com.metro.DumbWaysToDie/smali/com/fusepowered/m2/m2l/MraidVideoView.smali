.class Lcom/fusepowered/m2/m2l/MraidVideoView;
.super Lcom/fusepowered/m2/m2l/BaseVideoView;
.source "MraidVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "baseVideoViewListener"    # Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidVideoView$1;

    invoke-direct {v0, p0, p3}, Lcom/fusepowered/m2/m2l/MraidVideoView$1;-><init>(Lcom/fusepowered/m2/m2l/MraidVideoView;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidVideoView$2;

    invoke-direct {v0, p0, p3}, Lcom/fusepowered/m2/m2l/MraidVideoView$2;-><init>(Lcom/fusepowered/m2/m2l/MraidVideoView;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 65
    const-string v0, "video_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 66
    return-void
.end method
