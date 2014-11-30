.class Lcom/facebook/AuthorizationClient$4;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;

.field final synthetic val$tokenPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$4;->this$0:Lcom/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3

    .prologue
    .line 396
    :try_start_0
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 403
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    goto :goto_0
.end method
