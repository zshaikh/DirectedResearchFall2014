.class public Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "EnableDebugFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

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
    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "isDebugLoggingEnabled":Z
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 32
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 44
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 45
    .local v1, "flag":Z
    const/4 v3, 0x0

    .line 46
    .local v3, "result":Lcom/adobe/fre/FREObject;
    if-eqz p1, :cond_1

    instance-of v4, p1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    if-eqz v4, :cond_1

    .line 47
    check-cast p1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {p1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enableDebug(Z)Z

    move-result v1

    .line 49
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 54
    :cond_1
    :goto_1
    return-object v3

    .line 33
    .end local v1    # "flag":Z
    .end local v3    # "result":Lcom/adobe/fre/FREObject;
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to change the debug log level, NON-Debug is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to change the debug log level, NON-Debug is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 38
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to change the debug log level, NON-Debug is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 40
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to change the debug log level, NON-Debug is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    .restart local v1    # "flag":Z
    .restart local v3    # "result":Lcom/adobe/fre/FREObject;
    :catch_4
    move-exception v0

    .line 51
    .restart local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to create the return value for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
