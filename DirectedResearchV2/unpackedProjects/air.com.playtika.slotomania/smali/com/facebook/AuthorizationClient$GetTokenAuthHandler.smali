.class Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTokenAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient getTokenClient:Lcom/facebook/GetTokenClient;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v0}, Lcom/facebook/GetTokenClient;->cancel()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 531
    :cond_0
    return-void
.end method

.method getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 553
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 555
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    # invokes: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v6}, Lcom/facebook/AuthorizationClient;->access$1(Lcom/facebook/AuthorizationClient;)V

    .line 557
    if-eqz p2, :cond_3

    .line 558
    const-string v6, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 559
    .local v0, "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    .line 560
    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 561
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 564
    :cond_0
    sget-object v6, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    invoke-static {p2, v6}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v5

    .line 565
    .local v5, "token":Lcom/facebook/AccessToken;
    invoke-static {v5}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .line 566
    .local v2, "outcome":Lcom/facebook/AuthorizationClient$Result;
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v6, v2}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 582
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    .end local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "token":Lcom/facebook/AccessToken;
    :goto_0
    return-void

    .line 572
    .restart local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v1, "newPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 578
    invoke-virtual {p1, v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->setPermissions(Ljava/util/List;)V

    .line 581
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "newPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v6}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0

    .line 573
    .restart local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "newPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 574
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 575
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 534
    new-instance v1, Lcom/facebook/GetTokenClient;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 535
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1}, Lcom/facebook/GetTokenClient;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const/4 v1, 0x0

    .line 549
    :goto_0
    return v1

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    # invokes: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->access$0(Lcom/facebook/AuthorizationClient;)V

    .line 541
    new-instance v0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 548
    .local v0, "callback":Lcom/facebook/GetTokenClient$CompletedListener;
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/facebook/GetTokenClient;->setCompletedListener(Lcom/facebook/GetTokenClient$CompletedListener;)V

    .line 549
    const/4 v1, 0x1

    goto :goto_0
.end method
