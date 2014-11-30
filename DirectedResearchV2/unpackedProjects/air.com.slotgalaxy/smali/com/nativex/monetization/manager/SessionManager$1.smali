.class final Lcom/nativex/monetization/manager/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/nativex/common/OnTaskCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/SessionManager;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/nativex/monetization/listeners/SessionListener;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/listeners/SessionListener;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nativex/monetization/manager/SessionManager$1;->val$listener:Lcom/nativex/monetization/listeners/SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/nativex/monetization/manager/SessionManager$1;->val$listener:Lcom/nativex/monetization/listeners/SessionListener;

    if-eqz v0, :cond_0

    .line 100
    # getter for: Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->access$000()Lcom/nativex/monetization/business/SessionResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/nativex/monetization/manager/SessionManager$1;->val$listener:Lcom/nativex/monetization/listeners/SessionListener;

    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v1

    # getter for: Lcom/nativex/monetization/manager/SessionManager;->sessionResponse:Lcom/nativex/monetization/business/SessionResponseData;
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->access$000()Lcom/nativex/monetization/business/SessionResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/business/SessionResponseData;->isOfferwallEnabled()Z

    move-result v2

    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nativex/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/manager/SessionManager$1;->val$listener:Lcom/nativex/monetization/listeners/SessionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/nativex/monetization/listeners/SessionListener;->createSessionCompleted(ZZLjava/lang/String;)V

    goto :goto_0
.end method
