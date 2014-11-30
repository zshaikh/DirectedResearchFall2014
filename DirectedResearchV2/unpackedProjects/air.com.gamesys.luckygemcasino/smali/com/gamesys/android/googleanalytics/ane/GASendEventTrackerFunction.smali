.class public Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "GASendEventTrackerFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    .line 33
    .local v0, "ctx":Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    const/4 v3, 0x0

    .line 35
    .local v3, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v4, p2

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 37
    :try_start_0
    array-length v4, p2

    new-array v3, v4, [Ljava/lang/String;

    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    if-lt v2, v4, :cond_1

    .line 52
    .end local v2    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v0, v3}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->sendThroughTracker([Ljava/lang/String;)V

    .line 54
    return-object v5

    .line 39
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    aget-object v4, p2, v2

    if-eqz v4, :cond_2

    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v3, v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 39
    goto :goto_2

    .line 41
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 43
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 44
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 45
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 46
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 47
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 48
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/googleanalytics/ane/GASendEventTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
