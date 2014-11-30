.class public Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "GAStartTrackerFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v3, 0x0

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    .line 30
    .local v0, "ctx":Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    const/4 v2, 0x0

    .line 32
    .local v2, "trackingId":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 34
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->initTracker(Ljava/lang/String;)V

    .line 48
    return-object v3

    :cond_1
    move-object v2, v3

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 38
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 40
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 42
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GAStartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
