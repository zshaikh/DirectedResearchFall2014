.class Lcom/fusepowered/m2/m2l/MoPubView$1;
.super Landroid/content/BroadcastReceiver;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MoPubView;->registerScreenStateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MoPubView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    .line 125
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "MoPub"

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->access$0(Lcom/fusepowered/m2/m2l/MoPubView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "MoPub"

    const-string v0, "Screen sleep with ad in foreground, disable refresh"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v1, v1, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->getAutorefreshEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubView;->access$1(Lcom/fusepowered/m2/m2l/MoPubView;Z)V

    .line 132
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "MoPub"

    const-string v0, "Screen sleep but ad in background; refresh should already be disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->access$0(Lcom/fusepowered/m2/m2l/MoPubView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "MoPub"

    const-string v0, "Screen wake / ad in foreground, reset refresh"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView$1;->this$0:Lcom/fusepowered/m2/m2l/MoPubView;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubView;->mPreviousAutorefreshSetting:Z
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MoPubView;->access$2(Lcom/fusepowered/m2/m2l/MoPubView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_3
    const-string v0, "MoPub"

    const-string v0, "Screen wake but ad in background; don\'t enable refresh"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
