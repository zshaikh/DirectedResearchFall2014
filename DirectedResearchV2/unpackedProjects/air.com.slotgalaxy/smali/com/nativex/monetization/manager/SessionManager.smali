.class public Lcom/nativex/monetization/manager/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000()Lcom/nativex/monetization/business/SessionResponseData;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    return-object v0
.end method

.method public static clearSession()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    .line 82
    return-void
.end method

.method public static createSession()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nativex/monetization/manager/SessionManager;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V

    .line 86
    return-void
.end method

.method public static createSession(Lcom/nativex/monetization/listeners/SessionListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/nativex/monetization/listeners/SessionListener;

    .prologue
    .line 94
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    new-instance v1, Lcom/nativex/monetization/manager/SessionManager$1;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/manager/SessionManager$1;-><init>(Lcom/nativex/monetization/listeners/SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession(Lcom/nativex/common/OnTaskCompletedListener;)V

    .line 108
    return-void
.end method

.method public static endSession()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/SessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "SessionManager: Storing current session in SharedPreferneces as previous session"

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/SessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->storePreviousSessionId(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/nativex/common/Utilities;->getDateTimeUtcAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->storePreviousSessionEndTime(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->endSession()V

    .line 120
    return-void
.end method

.method public static getPreviousSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "psid":Ljava/lang/String;
    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/SessionResponseData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionResponse()Lcom/nativex/monetization/business/SessionResponseData;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    return-object v0
.end method

.method public static hasPreviousSessionId()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasSession()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSessionResponse(Lcom/nativex/monetization/business/SessionResponseData;)V
    .locals 1
    .param p0, "sessionResponse"    # Lcom/nativex/monetization/business/SessionResponseData;

    .prologue
    .line 66
    sget-object v0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    if-eq v0, p0, :cond_0

    .line 67
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->clearSession()V

    .line 69
    :cond_0
    sput-object p0, Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;

    .line 70
    return-void
.end method
