.class public Lcom/bitrhymes/googleanalytics/GoogleAnalyticsContext;
.super Lcom/adobe/fre/FREContext;
.source "GoogleAnalyticsContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleAnalytics"

.field static appsContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/bitrhymes/googleanalytics/GoogleAnalyticsContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/bitrhymes/googleanalytics/GoogleAnalyticsContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 30
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "JungleAppsContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "appsContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 35
    sput-object p0, Lcom/bitrhymes/googleanalytics/GoogleAnalyticsContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 36
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inside dispose method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
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
    const-string v3, "GoogleAnalytics"

    .line 41
    const-string v1, "GoogleAnalytics"

    const-string v1, "Inside getFunctions method"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "functionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/googleanalytics/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/GetVersion;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "startGATracker"

    new-instance v2, Lcom/bitrhymes/googleanalytics/StartGATrackerFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/StartGATrackerFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "setGACustomVariableAtIndex"

    new-instance v2, Lcom/bitrhymes/googleanalytics/SetGACustomVariableAtIndexFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/SetGACustomVariableAtIndexFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "trackGAEvent"

    new-instance v2, Lcom/bitrhymes/googleanalytics/TrackGAEventFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/TrackGAEventFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "trackGAPageview"

    new-instance v2, Lcom/bitrhymes/googleanalytics/TrackGAPageviewFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/TrackGAPageviewFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "stopGATracker"

    new-instance v2, Lcom/bitrhymes/googleanalytics/StopGATrackerFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/StopGATrackerFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "addInAppTransaction"

    new-instance v2, Lcom/bitrhymes/googleanalytics/AddInAppTransactionFunction;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/AddInAppTransactionFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "setSampleRate"

    new-instance v2, Lcom/bitrhymes/googleanalytics/SetSampleRate;

    invoke-direct {v2}, Lcom/bitrhymes/googleanalytics/SetSampleRate;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "GoogleAnalytics"

    const-string v1, "End of getFunctions method"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v0
.end method
