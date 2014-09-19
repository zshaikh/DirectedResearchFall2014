.class public Lcom/bitrhymes/inmobiext/ReportInMobiCustomGoal;
.super Ljava/lang/Object;
.source "ReportInMobiCustomGoal.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "InMobiAdTracker"


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
    .locals 5
    .parameter "context"
    .parameter "arg1"

    .prologue
    .line 20
    :try_start_0
    const-string v3, "InMobiAdTracker"

    const-string v4, " callig ReportInMobiCustomGoal ****** "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v3, Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;

    invoke-static {v3}, Lcom/inmobi/commons/IMCommonUtil;->setLogLevel(Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;)V

    .line 22
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, appID:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, customGoalStr:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->reportCustomGoal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0           #appID:Ljava/lang/String;
    .end local v1           #customGoalStr:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 26
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 27
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
