.class public Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "StartTrackerFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

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
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 29
    move-object v1, p1

    check-cast v1, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    .line 30
    .local v1, "ctx":Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;
    const/4 v0, -0x1

    .line 32
    .local v0, "applicationId":I
    const/4 v4, 0x0

    .line 34
    .local v4, "result":Lcom/adobe/fre/FREObject;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    .line 36
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {v1, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->initTracker(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "res":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 55
    :goto_2
    return-object v4

    .line 36
    .end local v3    # "res":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 39
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 40
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 41
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 42
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 43
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 44
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 52
    .end local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v3    # "res":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 53
    .restart local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to convert the result <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> into a FRE object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
