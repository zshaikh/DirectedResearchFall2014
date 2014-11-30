.class public Lcom/gamesys/android/social/facebook/ane/FBLogoutFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBLogoutFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 18
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 19
    .local v0, "fbCtx":Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 22
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getStatusCallback()Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 24
    invoke-virtual {v1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 29
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 27
    :cond_0
    sget-object v2, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->getAndroidASCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->getAndroidASLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
