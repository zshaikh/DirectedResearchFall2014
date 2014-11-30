.class public Lcom/stuv/ane/mdotm/MdotMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdotMReceiver.java"


# instance fields
.field public androidId:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field private makePostBack:Ljava/lang/Thread;

.field public postBackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "0"

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->postBackUrl:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v1, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v1, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/stuv/ane/mdotm/MdotMReceiver$1;

    invoke-direct {v0, p0}, Lcom/stuv/ane/mdotm/MdotMReceiver$1;-><init>(Lcom/stuv/ane/mdotm/MdotMReceiver;)V

    iput-object v0, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->makePostBack:Ljava/lang/Thread;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v8, "0"

    .line 21
    const-string v3, ""

    .line 23
    .local v3, "referrer":Ljava/lang/String;
    :try_start_0
    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    const-string v3, "null_referrer_found"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    const-string v5, "moo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onReceive"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :try_start_1
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 35
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "0"

    iput-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;

    .line 43
    iget-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "0"

    iput-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    :cond_2
    :goto_2
    const-string v2, ""

    .line 49
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 51
    const-string v2, "null_package"

    .line 56
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://ads.mdotm.com/ads/receiver.php?referrer="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&deviceid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&androidid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->postBackUrl:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->makePostBack:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 58
    return-void

    .line 27
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "exception_found_retrieving_referrer"

    goto/16 :goto_0

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 38
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "0"

    iput-object v8, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->deviceId:Ljava/lang/String;

    goto :goto_1

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 45
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "0"

    iput-object v8, p0, Lcom/stuv/ane/mdotm/MdotMReceiver;->androidId:Ljava/lang/String;

    goto :goto_2

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "applicationContext":Landroid/content/Context;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
