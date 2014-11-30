.class public Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ScreenDensityFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 33
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/4 v0, 0x0

    .line 35
    .local v0, "asClassName":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v6, p2

    if-lez v6, :cond_0

    .line 37
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 50
    .local v4, "x":Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    .line 51
    .local v5, "y":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    .line 54
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_1
    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 55
    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 59
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 60
    const-string v6, "xdpi"

    invoke-virtual {v3, v6, v4}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 61
    const-string v6, "ydpi"

    invoke-virtual {v3, v6, v5}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/adobe/fre/FREReadOnlyException; {:try_start_1 .. :try_end_1} :catch_a

    .line 78
    :goto_1
    return-object v3

    .line 37
    .end local v3    # "result":Lcom/adobe/fre/FREObject;
    .end local v4    # "x":Lcom/adobe/fre/FREObject;
    .end local v5    # "y":Lcom/adobe/fre/FREObject;
    :cond_1
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 43
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 45
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v3    # "result":Lcom/adobe/fre/FREObject;
    .restart local v4    # "x":Lcom/adobe/fre/FREObject;
    .restart local v5    # "y":Lcom/adobe/fre/FREObject;
    :catch_4
    move-exception v1

    .line 64
    .restart local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_5
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v1

    .line 68
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 69
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_7
    move-exception v1

    .line 70
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 71
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_8
    move-exception v1

    .line 72
    .local v1, "e":Lcom/adobe/fre/FREASErrorException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v1    # "e":Lcom/adobe/fre/FREASErrorException;
    :catch_9
    move-exception v1

    .line 74
    .local v1, "e":Lcom/adobe/fre/FRENoSuchNameException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 75
    .end local v1    # "e":Lcom/adobe/fre/FRENoSuchNameException;
    :catch_a
    move-exception v1

    .line 76
    .local v1, "e":Lcom/adobe/fre/FREReadOnlyException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert the screen density into a FRE object"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
