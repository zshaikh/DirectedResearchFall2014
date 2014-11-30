.class Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidNetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/http/AndroidNetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z
    invoke-static {v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$0(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceived() called with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;
    invoke-static {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$1(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_1
    return-void

    .line 57
    :cond_2
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    .local v3, "noConnectivity":Z
    if-eqz v3, :cond_3

    .line 60
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    sget-object v6, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$2(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;)V

    .line 65
    :goto_0
    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-static {v6, v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$3(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Landroid/net/NetworkInfo;)V

    .line 66
    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    const-string v5, "otherNetwork"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-static {v6, v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$4(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Landroid/net/NetworkInfo;)V

    .line 68
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$5(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_4

    .line 69
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$6(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Z)V

    .line 73
    :goto_1
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$7(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    const-string v6, "isFailover"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$8(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Z)V

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceive(): mNetworkInfo="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$5(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mOtherNetworkInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 78
    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$9(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, "[none]"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    const-string v6, " mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;
    invoke-static {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$1(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$10(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 85
    .local v4, "target":Landroid/os/Handler;
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$10(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 87
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 62
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "target":Landroid/os/Handler;
    :cond_3
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    sget-object v6, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->CONNECTED:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$2(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;)V

    goto/16 :goto_0

    .line 71
    :cond_4
    iget-object v5, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    invoke-static {v5, v7}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$6(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Z)V

    goto/16 :goto_1

    .line 78
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    # getter for: Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->access$9(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " noConn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
