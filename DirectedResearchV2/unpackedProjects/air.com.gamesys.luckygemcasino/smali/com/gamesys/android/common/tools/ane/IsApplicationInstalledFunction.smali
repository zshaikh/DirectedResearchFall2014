.class public Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "IsApplicationInstalledFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v5, p2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    .line 30
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/gamesys/android/common/tools/ToolsBox;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 45
    .local v1, "isInstalled":Z
    const/4 v3, 0x0

    .line 47
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 51
    .end local v1    # "isInstalled":Z
    .end local v3    # "result":Lcom/adobe/fre/FREObject;
    :goto_1
    return-object v3

    :cond_0
    move-object v2, v4

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v4, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 36
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v4, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 38
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_1
    move-object v3, v4

    .line 41
    goto :goto_1

    .line 48
    .restart local v1    # "isInstalled":Z
    .restart local v3    # "result":Lcom/adobe/fre/FREObject;
    :catch_4
    move-exception v0

    .line 49
    .restart local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/common/tools/ane/IsApplicationInstalledFunction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to convert installation result <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> for package <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> into a FRE object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
