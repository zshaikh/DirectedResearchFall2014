.class final Lcom/milkmangames/extensions/android/goviral/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 14

    const-string v2, "[GVExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Auth complete, state:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "[GVExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "perms:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v6, 0x2329

    const-string v2, ""

    if-eqz p3, :cond_15

    sget-boolean v2, Lcom/milkmangames/extensions/android/goviral/b;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "[GVExtension]"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception on request:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/facebook/FacebookServiceException;

    move v8, v0

    if-eqz v8, :cond_1

    move-object/from16 v0, p3

    check-cast v0, Lcom/facebook/FacebookServiceException;

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/FacebookRequestError;->getCategory()Lcom/facebook/FacebookRequestError$Category;

    move-result-object v6

    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_4

    const/4 v3, 0x2

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getUserActionMessageId()I

    move-result v2

    :try_start_0
    iget-object v6, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    iget-object v6, v6, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "[GVExtension]"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "User message:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v5

    move v5, v3

    move v3, v4

    move-object v4, v2

    move v2, v12

    :goto_2
    const-string v6, "[GVExtension]"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception at login:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[GVExtension]"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception detail:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v7

    :goto_3
    sget-object v7, Lcom/milkmangames/extensions/android/goviral/j;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_4
    return-void

    :cond_4
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_6

    const/4 v3, -0x2

    goto/16 :goto_0

    :cond_6
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_7

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_7
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_8

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_8
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_9

    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_9
    sget-object v8, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    if-ne v6, v8, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v2, "[GVExtension]"

    const-string v6, "Could not locate userMessage resource."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move v12, v5

    move v5, v3

    move v3, v4

    move-object v4, v2

    move v2, v12

    goto :goto_2

    :pswitch_0
    const-string v2, "[GVExtension]"

    const-string v3, "Closed session- not \'failed\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v3, "6"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    const-string v7, "[GVExtension]"

    const-string v8, "Closed session, clearing token (failed)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v8, "8"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"gvShouldNotify\":"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",\"gvCategory\":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\"gvErrCode\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"gvErr\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"gvUserMessage\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    if-nez p3, :cond_b

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v3, "5"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    move-result-object v7

    if-eqz v7, :cond_c

    const-string v7, "[GVExtension]"

    const-string v8, "Pending async task has failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const/4 v8, 0x2

    const-string v9, "Could not get write permissions"

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->b(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/milkmangames/extensions/android/goviral/b;->b(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->c(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    :cond_c
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    const-string v7, "[GVExtension]"

    const-string v8, "Requested new publish permissions failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v8, "303"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"permissions\":\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvShouldNotify\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvCategory\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvErrCode\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvErr\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvUserMessage\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->e(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    :cond_d
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "[GVExtension]"

    const-string v8, "Requested new read permissions failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v8, "301"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"permissions\":\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvShouldNotify\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",\"gvCategory\":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\"gvErrCode\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"gvErr\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"gvUserMessage\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->g(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    if-nez p3, :cond_10

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "[GVExtension]"

    const-string v3, "Running pending publish task on token update."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->c(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    :cond_e
    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v2, "[GVExtension]"

    const-string v3, "Got new read permissions."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v3, "300"

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v4}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->g(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    :cond_f
    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "[GVExtension]"

    const-string v3, "Got new publish permissions."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v3, "302"

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v4}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->e(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_10
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string v7, "[GVExtension]"

    const-string v8, "Pending async task has failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const/4 v8, 0x2

    const-string v9, "Could not get write permissions"

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->b(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/milkmangames/extensions/android/goviral/b;->b(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->c(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;

    :cond_11
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    const-string v7, "[GVExtension]"

    const-string v8, "Requested new publish permissions failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v8, "303"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"permissions\":\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvShouldNotify\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvCategory\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvErrCode\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\"gvErr\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvUserMessage\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->e(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    :cond_12
    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v7}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "[GVExtension]"

    const-string v8, "Requested new read permissions failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v8, "301"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"permissions\":\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v10}, Lcom/milkmangames/extensions/android/goviral/b;->f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\"gvShouldNotify\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",\"gvCategory\":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\"gvErrCode\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"gvErr\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"gvUserMessage\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/i;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2}, Lcom/milkmangames/extensions/android/goviral/b;->g(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_13
    move v2, v5

    move v5, v3

    move v3, v6

    goto/16 :goto_2

    :cond_14
    move v2, v6

    move v12, v5

    move v5, v3

    move v3, v12

    goto/16 :goto_2

    :cond_15
    move v12, v6

    move v6, v3

    move v3, v12

    move-object v13, v4

    move v4, v5

    move-object v5, v13

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
