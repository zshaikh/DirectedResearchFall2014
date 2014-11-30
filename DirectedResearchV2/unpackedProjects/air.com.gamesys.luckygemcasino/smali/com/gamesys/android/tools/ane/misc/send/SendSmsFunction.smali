.class public Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "SendSmsFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;->TAG:Ljava/lang/String;

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
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 28
    move-object v3, p1

    check-cast v3, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 29
    .local v3, "tCtx":Lcom/gamesys/android/tools/ane/ToolsContext;
    const/4 v2, 0x0

    .local v2, "smsText":Ljava/lang/String;
    const-string v0, "Send sms..."

    .line 30
    .local v0, "chooserTitle":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    .line 32
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_0
    array-length v5, p2

    if-lt v5, v6, :cond_0

    .line 35
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {v3, v2, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->performSmsAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v4

    :cond_1
    move-object v2, v4

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    :try_start_1
    const-string v0, "Send sms..."
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 39
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 41
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 42
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 43
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 44
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
