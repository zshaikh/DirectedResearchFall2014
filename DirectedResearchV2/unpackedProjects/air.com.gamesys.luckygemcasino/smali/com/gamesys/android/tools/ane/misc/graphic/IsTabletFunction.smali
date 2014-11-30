.class public Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "IsTabletFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method

.method private isTablet(Landroid/app/Activity;D)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "diagnaleInchesThreshold"    # D

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 74
    .local v5, "width":F
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 76
    .local v2, "height":F
    mul-float v6, v5, v5

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 77
    .local v3, "screenDiagonal":D
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "This device has a diagonal of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inches"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The threshold is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inches"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    cmpl-double v6, v3, p2

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-wide/high16 v5, 0x401c000000000000L

    .line 38
    const-wide/high16 v0, 0x401c000000000000L

    .line 40
    .local v0, "diagonaleInches":D
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    .line 42
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v0

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_2

    .end local v0    # "diagonaleInches":D
    :goto_1
    invoke-direct {p0, v7, v0, v1}, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->isTablet(Landroid/app/Activity;D)Z

    move-result v3

    .line 55
    .local v3, "isTablet":Z
    const/4 v4, 0x0

    .line 57
    .local v4, "res":Lcom/adobe/fre/FREObject;
    :try_start_1
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 61
    :goto_2
    return-object v4

    .end local v3    # "isTablet":Z
    .end local v4    # "res":Lcom/adobe/fre/FREObject;
    .restart local v0    # "diagonaleInches":D
    :cond_1
    move-wide v0, v5

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v7, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 46
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v7, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 48
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v7, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 50
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v7, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_2
    move-wide v0, v5

    .line 54
    goto :goto_1

    .line 58
    .end local v0    # "diagonaleInches":D
    .restart local v3    # "isTablet":Z
    .restart local v4    # "res":Lcom/adobe/fre/FREObject;
    :catch_4
    move-exception v2

    .line 59
    .restart local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to convert the boolean "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into a FREObject."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
