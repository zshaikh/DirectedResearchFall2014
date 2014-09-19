.class Lcom/fusepowered/m1/android/VideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/VideoPlayerActivity;->initBottomBar(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$4;->this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$4;->this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$4;->this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/fusepowered/m1/android/VideoPlayerActivity;->shouldSetUri:Z
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->access$102(Lcom/fusepowered/m1/android/VideoPlayerActivity;Z)Z

    .line 311
    iget-object v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$4;->this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->dismiss()V

    .line 313
    :cond_0
    return-void
.end method
