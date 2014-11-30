.class public Lcom/gamesys/android/social/facebook/ane/FBQueryStateFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBQueryStateFunction.java"


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
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 20
    .local v0, "session":Lcom/facebook/Session;
    const/4 v1, 0x0

    .line 22
    .local v1, "state":Lcom/facebook/SessionState;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    .line 30
    :goto_0
    check-cast p1, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {v1}, Lcom/facebook/SessionState;->getAndroidASCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/SessionState;->getAndroidASLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v2, 0x0

    return-object v2

    .line 26
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
