.class public Lcom/playtika/extensions/googleanalytics/GAFunctionSendView;
.super Ljava/lang/Object;
.source "GAFunctionSendView.java"

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
    .locals 7
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;

    move-object v1, v0

    .line 15
    .local v1, "context":Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;
    const/4 v3, 0x0

    .line 17
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 22
    :goto_0
    iget-object v4, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v4, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 23
    iget-object v4, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->debugMode:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    const-string v4, "[GA TRACKVIEW]"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "View:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 18
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 19
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
