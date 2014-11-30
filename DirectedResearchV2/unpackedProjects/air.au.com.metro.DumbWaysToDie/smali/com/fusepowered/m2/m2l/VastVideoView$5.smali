.class Lcom/fusepowered/m2/m2l/VastVideoView$5;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$5;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$5;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->getDuration()I

    move-result v0

    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView$5;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$5;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$20(Lcom/fusepowered/m2/m2l/VastVideoView;I)V

    .line 196
    :cond_0
    return-void
.end method
