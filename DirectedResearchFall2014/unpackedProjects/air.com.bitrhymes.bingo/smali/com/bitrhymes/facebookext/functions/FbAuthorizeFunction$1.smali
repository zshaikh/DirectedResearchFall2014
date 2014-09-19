.class Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction$1;
.super Ljava/lang/Object;
.source "FbAuthorizeFunction.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;


# direct methods
.method constructor <init>(Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction$1;->this$0:Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    const-string v2, "FBAuthorize call, try "

    const-string v4, ","

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBAuthorize call, try "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBAuthorize call, try "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 86
    if-eqz p3, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBAuthorize, Session migration failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBAuthorize, else : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 94
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 95
    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "FBAuthorize, Session opened from migrated token, the token have been updated"

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 104
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBAuthorize INFO - cachedAccessToken=success,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v1, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "fb_auth"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_1
    const-string v0, "FBAuthorize, ****** Session opened from migrated token"

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
