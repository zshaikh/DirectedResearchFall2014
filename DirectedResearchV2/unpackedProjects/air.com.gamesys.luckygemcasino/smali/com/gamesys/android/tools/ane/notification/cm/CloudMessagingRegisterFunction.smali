.class public Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "CloudMessagingRegisterFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 34
    move-object v4, p1

    check-cast v4, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 36
    .local v4, "tCtx":Lcom/gamesys/android/tools/ane/ToolsContext;
    const/4 v2, 0x0

    .local v2, "googleSenderId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "amazonSenderId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 37
    .local v3, "storeName":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 39
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 41
    :goto_0
    array-length v6, p2

    if-le v6, v7, :cond_0

    .line 42
    const/4 v6, 0x1

    aget-object v6, p2, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    :goto_1
    array-length v6, p2

    if-le v6, v8, :cond_1

    .line 46
    const/4 v6, 0x2

    aget-object v6, p2, v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 59
    :cond_1
    :goto_2
    invoke-virtual {v4, v2, v0, v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->performCloudMessagingRegistration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v5

    :cond_2
    move-object v2, v5

    .line 39
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 42
    goto :goto_1

    :cond_4
    move-object v3, v5

    .line 46
    goto :goto_2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 50
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 52
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 53
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 55
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
