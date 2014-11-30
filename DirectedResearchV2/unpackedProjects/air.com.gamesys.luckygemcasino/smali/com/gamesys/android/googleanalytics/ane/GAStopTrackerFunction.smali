.class public Lcom/gamesys/android/googleanalytics/ane/GAStopTrackerFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "GAStopTrackerFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 24
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    .line 26
    .local v0, "ctx":Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    invoke-virtual {v0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->stopTracker()V

    .line 28
    const/4 v1, 0x0

    return-object v1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
