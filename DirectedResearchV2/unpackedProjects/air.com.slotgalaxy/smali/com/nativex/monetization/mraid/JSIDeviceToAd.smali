.class public Lcom/nativex/monetization/mraid/JSIDeviceToAd;
.super Ljava/lang/Object;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;
    }
.end annotation


# static fields
.field public static final ERROR_COMMANDS_DELAY:J = 0x64L

.field public static final MSG_DELAYED_ERROR:I = 0x3b300

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private container:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field private delayedErrors:Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;-><init>()V

    sput-object v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 53
    new-instance v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;-><init>(Lcom/nativex/monetization/mraid/JSIDeviceToAd;Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    .line 54
    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/mraid/JSIDeviceToAd;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 74
    return-void
.end method

.method public fireChangeEvent(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V
    .locals 4
    .param p1, "newState"    # Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 121
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_CHANGE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 122
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 124
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 103
    :cond_0
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_ERROR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 104
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "commandName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "JSIDeviceToAdd: Exception caught in fireErrorEvent()"

    invoke-static {v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->runDelayed()V

    goto :goto_0
.end method

.method public fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 90
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 91
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nativex/monetization/mraid/MRAIDUtils;->getExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 79
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 80
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->getExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public fireEvent(Lcom/nativex/monetization/mraid/MRAIDUtils$Events;)V
    .locals 4
    .param p1, "event"    # Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .prologue
    .line 137
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 138
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->getEvent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 140
    return-void
.end method

.method public setCurrentPosition(Lcom/nativex/monetization/mraid/objects/CurrentPosition;)V
    .locals 4
    .param p1, "position"    # Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    .prologue
    .line 205
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 206
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 208
    return-void
.end method

.method public setDefaultPosition(Lcom/nativex/monetization/mraid/objects/DefaultPosition;)V
    .locals 4
    .param p1, "position"    # Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    .prologue
    .line 212
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 213
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 215
    return-void
.end method

.method public setDeviceFeatures(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->values()[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    move-result-object v0

    .local v0, "arr$":[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .local v2, "feature":Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setFeatureSupport(Lcom/nativex/monetization/mraid/MRAIDUtils$Features;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while checking feature support ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v6}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 66
    .end local v0    # "arr$":[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "feature":Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 67
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "JSDeviceToAd: Exception caught in setDeviceFeatures"

    invoke-static {v5, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v5}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setExpandProperties(Lcom/nativex/monetization/mraid/objects/ExpandProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    .prologue
    .line 226
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 227
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 229
    return-void
.end method

.method public setFeatureSupport(Lcom/nativex/monetization/mraid/MRAIDUtils$Features;Z)V
    .locals 4
    .param p1, "feature"    # Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 160
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 161
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 163
    return-void
.end method

.method public setIsViewable(Z)V
    .locals 4
    .param p1, "isViewable"    # Z

    .prologue
    .line 152
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 153
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 155
    return-void
.end method

.method public setMaxSize(Lcom/nativex/monetization/mraid/objects/MaxSize;)V
    .locals 4
    .param p1, "size"    # Lcom/nativex/monetization/mraid/objects/MaxSize;

    .prologue
    .line 191
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 192
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 194
    return-void
.end method

.method public setOrientationProperties(Lcom/nativex/monetization/mraid/objects/OrientationProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    .prologue
    .line 198
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 199
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 201
    return-void
.end method

.method public setPlacementType(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 4
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 144
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 145
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 148
    return-void
.end method

.method public setResizeProperties(Lcom/nativex/monetization/mraid/objects/ResizeProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    .prologue
    .line 219
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 220
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 222
    return-void
.end method

.method public setScreenSize(Lcom/nativex/monetization/mraid/objects/ScreenSize;)V
    .locals 4
    .param p1, "size"    # Lcom/nativex/monetization/mraid/objects/ScreenSize;

    .prologue
    .line 184
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 185
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 187
    return-void
.end method

.method public setState(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V
    .locals 1
    .param p1, "state"    # Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 168
    return-void
.end method

.method public setState(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V
    .locals 4
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p2, "state"    # Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 173
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 174
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p1, v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    goto :goto_0
.end method

.method public trackVideo(Ljava/lang/String;F)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 129
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->TRACK_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 130
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "richmediaTracker"

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 133
    return-void
.end method
