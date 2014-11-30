.class public Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBAuthenticateFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method

.method private launchLogin(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fbCtx"    # Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "params":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "params":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .restart local v0    # "params":Landroid/os/Bundle;
    const-string v1, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {p1, v0, p3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->performLoginAction(Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x0

    .line 32
    move-object v2, p1

    check-cast v2, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 35
    .local v2, "fbCtx":Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v5

    .line 36
    .local v5, "session":Lcom/facebook/Session;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/Session;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getStatusCallback()Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    move-result-object v6

    invoke-virtual {v5}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v8

    invoke-virtual {v6, v5, v8, v7}, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 71
    :goto_0
    return-object v7

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "appId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 46
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1
    array-length v6, p2

    const/4 v8, 0x2

    if-lt v6, v8, :cond_1

    .line 48
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 49
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    array-length v6, p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_3

    .line 66
    .end local v3    # "i":I
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v2, v0, v4}, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->launchLogin(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 46
    goto :goto_1

    .line 50
    .restart local v3    # "i":I
    :cond_3
    :try_start_1
    aget-object v6, p2, v3

    if-eqz v6, :cond_4

    aget-object v6, p2, v3

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    aput-object v6, v4, v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v6, v7

    .line 50
    goto :goto_4

    .line 54
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 56
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 58
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 59
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 60
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 61
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;->TAG:Ljava/lang/String;

    const-string v8, "Unable to retrieve action script parameter"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
