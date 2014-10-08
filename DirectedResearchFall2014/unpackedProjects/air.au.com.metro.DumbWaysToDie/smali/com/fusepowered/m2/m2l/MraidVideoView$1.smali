.class Lcom/fusepowered/m2/m2l/MraidVideoView$1;
.super Ljava/lang/Object;
.source "MraidVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidVideoView;

.field private final synthetic val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidVideoView;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$1;->this$0:Lcom/fusepowered/m2/m2l/MraidVideoView;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$1;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$1;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$1;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->videoCompleted(Z)V

    .line 52
    :cond_0
    return-void
.end method
