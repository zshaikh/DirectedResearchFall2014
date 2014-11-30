.class public Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
.super Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.source "GoogleAnalyticsContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private tracker:Lcom/google/analytics/tracking/android/Tracker;

.field private trackingId:Ljava/lang/String;

.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 34
    iput-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    return-void
.end method

.method private checkTracker(Ljava/lang/String;)Z
    .locals 3
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getTrackerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v0, :cond_1

    .line 129
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve a tracker to perform \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for this tracking id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getTrackerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getMetadataTrackerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const-string v0, "com.gamesys.android.googleanalytics.ane.METADATA_TRACKER_ID"

    invoke-static {p0, v0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrackerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getMetadataTrackerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
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
    .line 50
    sget-object v1, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "analytics.google.start"

    new-instance v2, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "analytics.google.stop"

    new-instance v2, Lcom/gamesys/android/googleanalytics/ane/GAStopTrackerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/googleanalytics/ane/GAStopTrackerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "analytics.google.send.event"

    new-instance v2, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "analytics.google.uncaught_exception.npe"

    new-instance v2, Lcom/gamesys/android/googleanalytics/fwk/NPEFunction;

    invoke-direct {v2}, Lcom/gamesys/android/googleanalytics/fwk/NPEFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initTracker(Ljava/lang/String;)V
    .locals 6
    .param p1, "aTrackingId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    .line 77
    const-string v1, "initTracker"

    invoke-direct {p0, v1}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->checkTracker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/google/analytics/tracking/android/ExceptionReporter;

    iget-object v2, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    .line 81
    invoke-virtual {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 80
    iput-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 93
    :goto_0
    const-string v0, "screenRes_X*Y"

    .line 94
    .local v0, "screenRes":Ljava/lang/String;
    iget-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-object v2, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_OPENING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->getGAParametersMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 98
    .end local v0    # "screenRes":Ljava/lang/String;
    :goto_1
    return-void

    .line 88
    :cond_1
    sget-object v1, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set the uncaught exception handler for this tracking id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getTrackerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    sget-object v1, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve a tracker for this tracking id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->getTrackerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public notifyActionDone()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public send()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public sendThroughTracker([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gt v2, v4, :cond_1

    .line 174
    :cond_0
    sget-object v2, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    const-string v3, "Unable to send event to tracker the number of paramters must be at least 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_1
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->getFieldsByName(Ljava/lang/String;)Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    move-result-object v0

    .line 180
    .local v0, "gaf":Lcom/gamesys/android/googleanalytics/fwk/GAFields;
    sget-object v2, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->UNKNOWN:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    invoke-virtual {v2, v0}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->actionScriptValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->checkTracker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 182
    .local v1, "subArray":[Ljava/lang/String;
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v2, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->getGAParametersMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 185
    .end local v1    # "subArray":[Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    const-string v3, "Unknown GAFields name or tracker not initalized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTimerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "timingIntervalMs"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "optionalLabel"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TimerEvent:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    if-eqz p4, :cond_0

    .line 151
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v1, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "sendTimerEvent"

    invoke-direct {p0, v1}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->checkTracker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-object v2, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->TIMER_EVENT:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->getGAParametersMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 163
    :cond_1
    return-void
.end method

.method public stopTracker()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_CLOSING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    invoke-virtual {v1, v2}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->getGAParametersMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 107
    iput-object v2, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->trackingId:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 110
    :cond_0
    return-void
.end method
