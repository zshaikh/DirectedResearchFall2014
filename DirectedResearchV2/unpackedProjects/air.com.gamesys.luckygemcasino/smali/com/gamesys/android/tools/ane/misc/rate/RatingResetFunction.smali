.class public Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "RatingResetFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;->TAG:Ljava/lang/String;

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
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "androidActivity":Landroid/app/Activity;
    move-object v3, p1

    .line 33
    check-cast v3, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 35
    .local v3, "tCtx":Lcom/gamesys/android/tools/ane/ToolsContext;
    const/4 v1, 0x0

    .line 36
    .local v1, "appVersion":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v5, p2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 38
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->setAppVersion(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->resetRatingCount(Landroid/content/Context;)V

    .line 55
    check-cast p1, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.gamesys.android.ane.tools.LEVEL_RATING_CURRENT_COUNT"

    invoke-virtual {p1, v5, v6}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v4

    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_1
    move-object v1, v4

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 44
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 46
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
