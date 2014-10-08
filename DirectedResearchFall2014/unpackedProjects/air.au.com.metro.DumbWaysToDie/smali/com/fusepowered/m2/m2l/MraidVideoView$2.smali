.class Lcom/fusepowered/m2/m2l/MraidVideoView$2;
.super Ljava/lang/Object;
.source "MraidVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$2;->this$0:Lcom/fusepowered/m2/m2l/MraidVideoView;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    .line 55
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

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidVideoView$2;->val$baseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->videoError(Z)V

    .line 61
    :cond_0
    return v1
.end method
