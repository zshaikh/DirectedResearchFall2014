.class public Lcom/gamesys/android/tools/ane/logs/LogFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "LogFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/gamesys/android/tools/ane/logs/LogFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 31
    const/4 v1, 0x0

    .local v1, "level":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 32
    .local v3, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v6, p2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 34
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :goto_0
    const/4 v6, 0x1

    aget-object v6, p2, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 36
    :goto_1
    const/4 v6, 0x2

    aget-object v6, p2, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 48
    :cond_0
    :goto_2
    invoke-static {v1}, Lcom/gamesys/android/tools/ane/logs/LogLevel;->fromName(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/logs/LogLevel;

    move-result-object v2

    .line 49
    .local v2, "ll":Lcom/gamesys/android/tools/ane/logs/LogLevel;
    iget-object v6, v2, Lcom/gamesys/android/tools/ane/logs/LogLevel;->logInterface:Lcom/gamesys/android/tools/ane/logs/INativeLoggable;

    invoke-interface {v6, v4, v3}, Lcom/gamesys/android/tools/ane/logs/INativeLoggable;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v5

    .end local v2    # "ll":Lcom/gamesys/android/tools/ane/logs/LogLevel;
    :cond_1
    move-object v1, v5

    .line 34
    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 35
    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/logs/LogFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 39
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/logs/LogFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 41
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 42
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/logs/LogFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 43
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 44
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/logs/LogFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
