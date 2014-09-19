.class Lcom/fusepowered/m2/m2l/VastVideoView$3;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/VastVideoView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->val$context:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 140
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughTrackers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$5(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V

    .line 142
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->videoClicked()V

    .line 146
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->val$context:Landroid/content/Context;

    const-class v2, Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, mraidBrowserIntent:Landroid/content/Intent;
    const-string v1, "extra_url"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$6(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0           #mraidBrowserIntent:Landroid/content/Intent;
    :cond_1
    return v3
.end method
