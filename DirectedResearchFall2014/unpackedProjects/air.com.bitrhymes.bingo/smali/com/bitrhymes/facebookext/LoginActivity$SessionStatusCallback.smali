.class Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitrhymes/facebookext/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/facebookext/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/bitrhymes/facebookext/LoginActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bitrhymes/facebookext/LoginActivity;Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;-><init>(Lcom/bitrhymes/facebookext/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 9
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    const-string v8, ","

    const-string v4, "null exception"

    const-string v7, "failed,"

    const-string v6, "fb_auth"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback, state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback, session = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback, exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback, session.isClosed() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback, session.isOpened() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 244
    instance-of v2, p3, Lcom/facebook/FacebookOperationCanceledException;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 246
    .local v0, "isCancel":Ljava/lang/Boolean;
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 247
    iget-object v2, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    # getter for: Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z
    invoke-static {v2}, Lcom/bitrhymes/facebookext/LoginActivity;->access$0(Lcom/bitrhymes/facebookext/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback reauthorize cb : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    # getter for: Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z
    invoke-static {v3}, Lcom/bitrhymes/facebookext/LoginActivity;->access$0(Lcom/bitrhymes/facebookext/LoginActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 250
    sget-object v2, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "success,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 254
    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-virtual {v2}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-virtual {v2}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    .line 308
    :cond_0
    :goto_1
    const-string v2, "Login SessionStatusCallback - ok"

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 309
    return-void

    .line 258
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 262
    .local v1, "msg":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback isCancel : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 263
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed,"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sput-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto :goto_0

    .line 261
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    const-string v2, "null exception"

    move-object v1, v4

    goto :goto_2

    .line 269
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 270
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback isCancel else: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 271
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed,"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sput-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto :goto_0

    .line 269
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    const-string v2, "null exception"

    move-object v1, v4

    goto :goto_3

    .line 276
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback session.isOpened() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 279
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "success,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-virtual {v2}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    goto/16 :goto_1

    .line 286
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback FacebookException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 291
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 292
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback session.isClosed() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 293
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed,"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {v1}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 295
    sput-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 305
    :goto_5
    iget-object v2, p0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;->this$0:Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-virtual {v2}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    goto/16 :goto_1

    .line 291
    .end local v1    # "msg":Ljava/lang/String;
    :cond_7
    const-string v2, "null exception"

    move-object v1, v4

    goto :goto_4

    .line 299
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 300
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login SessionStatusCallback session.isClosed() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 301
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "fb_auth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed,"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {v1}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 303
    sput-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto :goto_5

    .line 299
    .end local v1    # "msg":Ljava/lang/String;
    :cond_9
    const-string v2, "null exception"

    move-object v1, v4

    goto :goto_6
.end method
