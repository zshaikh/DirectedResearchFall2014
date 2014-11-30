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
    .line 703
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v0}, Lcom/facebook/GetTokenClient;->cancel()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 718
    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    const-string v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 740
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 742
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    # invokes: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v7}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    .line 744
    if-eqz p2, :cond_5

    .line 745
    const-string v7, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 746
    .local v0, "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v5

    .line 747
    .local v5, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 750
    :cond_0
    sget-object v7, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    invoke-static {p2, v7}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 752
    .local v6, "token":Lcom/facebook/AccessToken;
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v7, v7, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v7, v6}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v3

    .line 753
    .local v3, "outcome":Lcom/facebook/AuthorizationClient$Result;
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v7, v3}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 773
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "token":Lcom/facebook/AccessToken;
    :goto_0
    return-void

    .line 759
    .restart local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v2, "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 761
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 762
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 765
    .end local v4    # "permission":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 766
    const-string v7, "new_permissions"

    const-string v8, ","

    invoke-static {v8, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_4
    invoke-virtual {p1, v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->setPermissions(Ljava/util/List;)V

    .line 772
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v7}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 721
    new-instance v1, Lcom/facebook/GetTokenClient;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 722
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1}, Lcom/facebook/GetTokenClient;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    const/4 v1, 0x0

    .line 736
    :goto_0
    return v1

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    # invokes: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->access$300(Lcom/facebook/AuthorizationClient;)V

    .line 728
    new-instance v0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 735
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/facebook/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 736
    const/4 v1, 0x1

    goto :goto_0
.end method
