.class public Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;
.super Ljava/lang/Object;
.source "SessionStatusCallback.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gamesys/android/social/facebook/ane/FacebookContext;)V
    .locals 1
    .param p1, "context"    # Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 33
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 34
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 39
    if-eqz p3, :cond_7

    .line 41
    :try_start_0
    instance-of v3, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v3, :cond_1

    .line 42
    move-object v0, p3

    check-cast v0, Lcom/facebook/FacebookServiceException;

    move-object v1, v0

    .line 43
    .local v1, "ex":Lcom/facebook/FacebookServiceException;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v1}, Lcom/facebook/FacebookServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v1    # "ex":Lcom/facebook/FacebookServiceException;
    :goto_0
    sget-object v3, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->TAG:Ljava/lang/String;

    const-string v4, "Unable to perform session operation"

    invoke-static {v3, v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->notifyActionDone()V

    .line 73
    :cond_0
    :goto_2
    return-void

    .line 44
    :cond_1
    :try_start_1
    instance-of v3, p3, Lcom/facebook/FacebookDialogException;

    if-eqz v3, :cond_2

    .line 45
    move-object v0, p3

    check-cast v0, Lcom/facebook/FacebookDialogException;

    move-object v1, v0

    .line 46
    .local v1, "ex":Lcom/facebook/FacebookDialogException;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "ex":Lcom/facebook/FacebookDialogException;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine the kind of errror that just happened."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v4, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v5, "com.gamesys.android.ane.fb.LEVEL_ERROR"

    invoke-virtual {v4, v3, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    instance-of v3, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v3, :cond_3

    .line 48
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.gamesys.android.ane.fb.LEVEL_ERROR_AUTHORIZATION"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    instance-of v3, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_4

    .line 50
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "com.gamesys.android.ane.fb.CODE_ERROR_USER_CANCEL"

    const-string v5, "com.gamesys.android.ane.fb.LEVEL_ERROR"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_4
    iget-object v4, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 53
    :goto_4
    const-string v5, "com.gamesys.android.ane.fb.LEVEL_ERROR"

    .line 52
    invoke-virtual {v4, v3, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "com.gamesys.android.ane.fb.CODE_ERROR_UNEXPECTED"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 58
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string v3, "com.gamesys.android.ane.fb.CODE_ERROR_UNEXPECTED"

    goto :goto_3

    .line 64
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_7
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {p2}, Lcom/facebook/SessionState;->getAndroidASCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/SessionState;->getAndroidASLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.gamesys.android.ane.fb.LEVEL_KEY_ACCESS_TOKEN"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->notifyActionDone()V

    goto/16 :goto_2
.end method
