.class public Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "TrackSignUpFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

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
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    .line 36
    .local v0, "ctx":Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;
    const/4 v4, 0x0

    .line 37
    .local v4, "result":Lcom/adobe/fre/FREObject;
    const/4 v6, 0x0

    .local v6, "source":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "site":Ljava/lang/String;
    const/4 v2, 0x0

    .line 39
    .local v2, "info":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 41
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 43
    :goto_0
    array-length v8, p2

    if-le v8, v9, :cond_0

    .line 44
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 47
    :cond_0
    :goto_1
    array-length v8, p2

    if-le v8, v10, :cond_1

    .line 48
    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_4

    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 61
    :cond_1
    :goto_2
    invoke-virtual {v0, v6, v5, v2}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->trackSignup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "res":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 67
    :goto_3
    return-object v4

    .end local v3    # "res":Ljava/lang/String;
    :cond_2
    move-object v6, v7

    .line 41
    goto :goto_0

    :cond_3
    move-object v5, v7

    .line 44
    goto :goto_1

    :cond_4
    move-object v2, v7

    .line 48
    goto :goto_2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v7, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 52
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v7, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 55
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v7, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 56
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 57
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v7, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 64
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v3    # "res":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 65
    .restart local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v7, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to convert the result <"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> into a FRE object"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
