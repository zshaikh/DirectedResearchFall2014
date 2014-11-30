.class public Lcom/gamesys/android/social/facebook/ane/FBIsLoggedInFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBIsLoggedInFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 18
    .local v2, "session":Lcom/facebook/Session;
    const/4 v0, 0x0

    .line 21
    .local v0, "defaultResult":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 26
    :goto_0
    if-eqz v2, :cond_0

    .line 28
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 33
    .end local v0    # "defaultResult":Lcom/adobe/fre/FREObject;
    :cond_0
    :goto_1
    return-object v0

    .line 29
    .restart local v0    # "defaultResult":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    goto :goto_1

    .line 22
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
