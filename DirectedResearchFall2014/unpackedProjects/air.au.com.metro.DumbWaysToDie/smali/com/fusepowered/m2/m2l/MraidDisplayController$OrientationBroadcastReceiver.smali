.class Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastRotation:I

.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isRegistered()Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController;->getDisplayRotation()I
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$3(Lcom/fusepowered/m2/m2l/MraidDisplayController;)I

    move-result v1

    .line 875
    .local v1, orientation:I
    iget v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    if-eq v1, v2, :cond_0

    .line 876
    iput v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    .line 877
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iget v3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController;->onOrientationChanged(I)V
    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$4(Lcom/fusepowered/m2/m2l/MraidDisplayController;I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 889
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 890
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 895
    return-void
.end method
