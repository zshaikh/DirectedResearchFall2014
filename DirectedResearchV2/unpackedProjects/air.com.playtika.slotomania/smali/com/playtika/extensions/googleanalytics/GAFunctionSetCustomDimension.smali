.class public Lcom/playtika/extensions/googleanalytics/GAFunctionSetCustomDimension;
.super Ljava/lang/Object;
.source "GAFunctionSetCustomDimension.java"

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
    .locals 8
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

    .line 16
    .local v3, "index":I
    const/4 v4, 0x0

    .line 18
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    .line 19
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 24
    :goto_0
    iget-object v5, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v5, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 25
    iget-object v5, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->debugMode:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    const-string v5, "[GA CUSTOMDIMENSION]"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Custom:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " demension:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 20
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 21
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
