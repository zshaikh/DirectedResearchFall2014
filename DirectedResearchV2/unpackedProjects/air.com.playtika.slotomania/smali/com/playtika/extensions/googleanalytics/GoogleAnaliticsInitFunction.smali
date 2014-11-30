.class public Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsInitFunction;
.super Ljava/lang/Object;
.source "GoogleAnaliticsInitFunction.java"

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
    const/4 v9, 0x0

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;

    move-object v1, v0

    .line 14
    .local v1, "context":Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 16
    const/4 v7, 0x0

    .line 17
    .local v7, "trackingID":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    .local v2, "debugMode":Ljava/lang/Boolean;
    const/16 v3, 0x78

    .line 19
    .local v3, "dispatchPeriod":I
    const-wide/high16 v5, 0x4059000000000000L

    .line 21
    .local v5, "sampleRate":D
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 22
    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    .line 24
    const/4 v8, 0x3

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 29
    :goto_0
    iget-object v8, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setDebug(Z)V

    .line 30
    iput-object v2, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->debugMode:Ljava/lang/Boolean;

    .line 31
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 32
    iget-object v8, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v8, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 33
    iget-object v8, v1, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v8, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->setSampleRate(D)V

    .line 34
    const/4 v8, 0x0

    return-object v8

    .line 25
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 26
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
