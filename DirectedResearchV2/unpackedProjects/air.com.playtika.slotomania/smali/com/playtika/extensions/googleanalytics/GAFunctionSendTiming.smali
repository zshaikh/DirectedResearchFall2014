.class public Lcom/playtika/extensions/googleanalytics/GAFunctionSendTiming;
.super Ljava/lang/Object;
.source "GAFunctionSendTiming.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;

    move-object v7, v0

    .line 14
    .local v7, "context":Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;
    const/4 v2, 0x0

    .line 15
    .local v2, "category":Ljava/lang/String;
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 16
    .local v9, "interval":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 17
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 19
    .local v6, "label":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 20
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 21
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 22
    const/4 v1, 0x3

    aget-object v1, p2, v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 27
    :cond_0
    :goto_0
    iget-object v1, v7, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {v1 .. v6}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, v7, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->debugMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "[GA TRACKTIME]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Category:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Interval::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Label:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 24
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 25
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
