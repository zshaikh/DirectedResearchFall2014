.class public Lcom/bitrhymes/inmobiext/InMobiInit;
.super Ljava/lang/Object;
.source "InMobiInit.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .parameter "context"
    .parameter "arg1"

    .prologue
    const-string v2, "InMobiInit"

    .line 18
    :try_start_0
    const-string v2, "InMobiInit"

    const-string v3, "app download reporting to In Mobi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v2, Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;

    invoke-static {v2}, Lcom/inmobi/commons/IMCommonUtil;->setLogLevel(Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;)V

    .line 20
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, appID:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->reportAppDownloadGoal()V

    .line 23
    const-string v2, "InMobiInit"

    const-string v3, "app download reported to In Mobi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0           #appID:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 24
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 25
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
