.class public Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBRequestDialogFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;->TAG:Ljava/lang/String;

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
    .locals 13
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v12, 0x6

    const/4 v10, 0x0

    .line 46
    move-object v1, p1

    check-cast v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 47
    .local v1, "ctx":Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    const/4 v0, 0x0

    .local v0, "appId":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "data":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "to":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "link":Ljava/lang/String;
    const/4 v6, 0x0

    .line 48
    .local v6, "notificationText":Ljava/lang/String;
    if-eqz p2, :cond_a

    array-length v11, p2

    if-lt v11, v12, :cond_a

    .line 50
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, p2, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    const/4 v11, 0x1

    aget-object v11, p2, v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 52
    :goto_1
    const/4 v11, 0x2

    aget-object v11, p2, v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 53
    :goto_2
    const/4 v11, 0x3

    aget-object v11, p2, v11

    if-eqz v11, :cond_6

    const/4 v11, 0x3

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 54
    :goto_3
    const/4 v11, 0x4

    aget-object v11, p2, v11

    if-eqz v11, :cond_7

    const/4 v11, 0x4

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 55
    :goto_4
    const/4 v11, 0x5

    aget-object v11, p2, v11

    if-eqz v11, :cond_8

    const/4 v11, 0x5

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 58
    :goto_5
    if-eqz p2, :cond_0

    array-length v11, p2

    const/4 v12, 0x7

    if-lt v11, v12, :cond_0

    .line 59
    const/4 v11, 0x6

    aget-object v11, p2, v11

    if-eqz v11, :cond_9

    const/4 v11, 0x6

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 62
    :cond_0
    :goto_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v7, "params":Landroid/os/Bundle;
    const-string v11, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v8, :cond_1

    .line 65
    const-string v11, "title"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    const-string v11, "message"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v11, "to"

    invoke-virtual {v7, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v11, "link"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v11, "notification_text"

    invoke-virtual {v7, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v2, :cond_2

    .line 73
    const-string v11, "data"

    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {v1, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->performRequestDialogAction(Landroid/os/Bundle;)V

    .line 78
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_SUCCESS_PROGRESS"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_SUCCESS"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    .end local v7    # "params":Landroid/os/Bundle;
    :goto_7
    return-object v10

    :cond_3
    move-object v0, v10

    .line 50
    goto/16 :goto_0

    :cond_4
    move-object v8, v10

    .line 51
    goto :goto_1

    :cond_5
    move-object v5, v10

    .line 52
    goto :goto_2

    :cond_6
    move-object v9, v10

    .line 53
    goto :goto_3

    :cond_7
    move-object v4, v10

    .line 54
    goto :goto_4

    :cond_8
    move-object v6, v10

    .line 55
    goto :goto_5

    :cond_9
    move-object v2, v10

    .line 59
    goto :goto_6

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 83
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 84
    .local v3, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 86
    .end local v3    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v3

    .line 87
    .local v3, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 89
    .end local v3    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v3

    .line 90
    .local v3, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 94
    .end local v3    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_a
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_WRONG_ARG_COUNT"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v1, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
