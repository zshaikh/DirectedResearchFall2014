.class Lcom/bitrhymes/facebookext/FacebookExtContext$1;
.super Ljava/lang/Object;
.source "FacebookExtContext.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/facebookext/FacebookExtContext;->updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 100
    if-eqz p3, :cond_0

    .line 102
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

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 107
    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "FBAuthorize, Session opened from migrated token, the token have been updated"

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "FBAuthorize, Session opened from migrated token"

    invoke-static {v0}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
