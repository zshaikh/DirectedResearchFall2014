.class public Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ConnectivityFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static networkChangeReceiver:Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "freContext"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 38
    .local v1, "activity":Landroid/app/Activity;
    const-string v6, "connectivity"

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 40
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 43
    .local v3, "isConnected":Z
    :goto_0
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;->networkChangeReceiver:Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;

    if-nez v6, :cond_0

    .line 44
    new-instance v6, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;

    check-cast p1, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .end local p1    # "freContext":Lcom/adobe/fre/FREContext;
    invoke-direct {v6, p1}, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;-><init>(Lcom/gamesys/android/common/tools/fwk/AbstractContext;)V

    sput-object v6, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;->networkChangeReceiver:Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;

    .line 47
    :cond_0
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;->networkChangeReceiver:Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v4, "selfConstructed":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 52
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v6, "noConnectivity"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string v5, "networkInfo"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    :goto_1
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;->networkChangeReceiver:Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;

    invoke-virtual {v5, v1, v4}, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    const/4 v5, 0x0

    return-object v5

    .end local v3    # "isConnected":Z
    .end local v4    # "selfConstructed":Landroid/content/Intent;
    .restart local p1    # "freContext":Lcom/adobe/fre/FREContext;
    :cond_1
    move v3, v5

    .line 41
    goto :goto_0

    .line 56
    .end local p1    # "freContext":Lcom/adobe/fre/FREContext;
    .restart local v3    # "isConnected":Z
    .restart local v4    # "selfConstructed":Landroid/content/Intent;
    :cond_2
    const-string v5, "noConnectivity"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
