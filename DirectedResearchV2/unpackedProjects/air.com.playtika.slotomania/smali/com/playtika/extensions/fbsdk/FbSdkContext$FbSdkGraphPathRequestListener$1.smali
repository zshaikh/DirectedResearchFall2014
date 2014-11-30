.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;
.super Ljava/lang/Thread;
.source "FbSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->onCompleted(Lcom/facebook/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

.field private final synthetic val$response:Lcom/facebook/Response;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    .line 556
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0xbe

    const-string v11, "error"

    const-string v9, "GraphPath response"

    .line 561
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    if-eqz v5, :cond_7

    .line 562
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 563
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v0, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GraphPath response has error 190: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GraphPath response"

    invoke-static {v0, v9}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-static {v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v5

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;
    invoke-static {v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v8, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 568
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v7}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v7

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->jsonFill(Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V
    invoke-static {v5, v6, v7}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 570
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    .line 571
    .local v2, "graphObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/model/GraphObject;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 572
    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/model/GraphObject;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->jsonFill(Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V
    invoke-static {v6, v7, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 575
    .end local v2    # "graphObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/model/GraphObject;>;"
    .end local v3    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GraphPath response has no GraphObjects. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v6}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 576
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, ""

    .line 578
    .local v4, "tagSuffix":Ljava/lang/String;
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 579
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 580
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 582
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Session provided to a Request in un-opened state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 583
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-static {v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v5

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;
    invoke-static {v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v7}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v8, v7}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GraphPath response"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :cond_5
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v5}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Connection closed by peer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 586
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-static {v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v5

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;
    invoke-static {v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2746

    iget-object v8, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->val$response:Lcom/facebook/Response;

    invoke-virtual {v8}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v7, v8}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 587
    const-string v4, ": Connection closed by peer"

    goto :goto_2

    .line 591
    :cond_6
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-static {v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v5

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;
    invoke-static {v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v10, v11}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "tagSuffix":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "GraphPath response == null"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "GraphPath response"

    invoke-static {v0, v9}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 598
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-static {v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v5

    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->this$1:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;
    invoke-static {v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v10, v11}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
