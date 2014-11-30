.class public Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;
.super Lcom/adobe/fre/FREContext;
.source "GoogleAnalyticsContext.java"


# instance fields
.field public debugMode:Ljava/lang/Boolean;

.field public mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field public mGaTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->debugMode:Ljava/lang/Boolean;

    .line 11
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    iget-object v0, p0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Tracker;->close()V

    .line 20
    iput-object v1, p0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 21
    iput-object v1, p0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 23
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "onStart"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsStartFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsStartFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "onStop"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsStopFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GoogleAnaliticsStopFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "setCustomDimension"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GAFunctionSetCustomDimension;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GAFunctionSetCustomDimension;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "sendView"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GAFunctionSendView;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GAFunctionSendView;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "sendEvent"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GAFunctionSendEvent;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GAFunctionSendEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "sendTiming"

    new-instance v2, Lcom/playtika/extensions/googleanalytics/GAFunctionSendTiming;

    invoke-direct {v2}, Lcom/playtika/extensions/googleanalytics/GAFunctionSendTiming;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0
.end method
