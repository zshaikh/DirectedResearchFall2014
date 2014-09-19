.class public Lcom/inmobi/adtracker/androidsdk/impl/ConnBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "ConnBroadcastReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    .line 29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Received CONNECTIVITY BROADCAST"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->init()V

    .line 33
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->initializeWebview()Z

    .line 35
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportOnConnected()V

    .line 38
    :cond_0
    return-void
.end method
