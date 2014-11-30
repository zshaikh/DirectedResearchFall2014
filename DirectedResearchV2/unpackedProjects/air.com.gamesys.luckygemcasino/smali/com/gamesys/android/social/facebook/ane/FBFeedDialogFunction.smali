.class public Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "FBFeedDialogFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;->TAG:Ljava/lang/String;

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

    .line 44
    const/4 v0, 0x0

    .local v0, "appId":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "caption":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "description":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "link":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "picture":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "source":Ljava/lang/String;
    move-object v2, p1

    .line 45
    check-cast v2, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 47
    .local v2, "ctx":Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    if-eqz p2, :cond_8

    array-length v11, p2

    if-lt v11, v12, :cond_8

    .line 49
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, p2, v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    const/4 v11, 0x1

    aget-object v11, p2, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 51
    :goto_1
    const/4 v11, 0x2

    aget-object v11, p2, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_2
    const/4 v11, 0x3

    aget-object v11, p2, v11

    if-eqz v11, :cond_4

    const/4 v11, 0x3

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 53
    :goto_3
    const/4 v11, 0x4

    aget-object v11, p2, v11

    if-eqz v11, :cond_5

    const/4 v11, 0x4

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 54
    :goto_4
    const/4 v11, 0x5

    aget-object v11, p2, v11

    if-eqz v11, :cond_6

    const/4 v11, 0x5

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 57
    :goto_5
    if-eqz p2, :cond_0

    array-length v11, p2

    const/4 v12, 0x7

    if-lt v11, v12, :cond_0

    .line 58
    const/4 v11, 0x6

    aget-object v11, p2, v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 61
    :cond_0
    :goto_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v7, "params":Landroid/os/Bundle;
    const-string v11, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v11, "name"

    invoke-virtual {v7, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v11, "caption"

    invoke-virtual {v7, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v11, "description"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v11, "link"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v11, "picture"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v11, "source"

    invoke-virtual {v7, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->performFeedDialogAction(Landroid/os/Bundle;)V

    .line 73
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_SUCCESS_PROGRESS"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_SUCCESS"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    .end local v7    # "params":Landroid/os/Bundle;
    :goto_7
    return-object v10

    :cond_1
    move-object v0, v10

    .line 49
    goto/16 :goto_0

    :cond_2
    move-object v6, v10

    .line 50
    goto :goto_1

    :cond_3
    move-object v1, v10

    .line 51
    goto :goto_2

    :cond_4
    move-object v3, v10

    .line 52
    goto :goto_3

    :cond_5
    move-object v5, v10

    .line 53
    goto :goto_4

    :cond_6
    move-object v8, v10

    .line 54
    goto :goto_5

    :cond_7
    move-object v9, v10

    .line 58
    goto :goto_6

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/IllegalStateException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 78
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    .line 79
    .local v4, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 81
    .end local v4    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v4

    .line 82
    .local v4, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 84
    .end local v4    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v4

    .line 85
    .local v4, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v11, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 89
    .end local v4    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_8
    const-string v11, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_WRONG_ARG_COUNT"

    const-string v12, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v11, v12}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
