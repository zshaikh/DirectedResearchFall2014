.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;
.super Ljava/lang/Object;
.source "FbSdkContext.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbSdkUserRequestListener"
.end annotation


# instance fields
.field private final cbid:Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V
    .locals 0
    .param p2, "cbid"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->cbid:Ljava/lang/String;

    .line 641
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 11
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v6, 0x0

    const-string v10, "user = "

    const-string v9, "response "

    const-string v8, "error"

    const-string v7, "FbSdkUserRequestListener.onCompleted"

    .line 646
    const/4 v1, 0x0

    .line 648
    .local v1, "hasError":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 650
    :try_start_0
    const-string v3, "FbSdkUserRequestListener.onCompleted"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v3, Lorg/json/JSONTokener;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    .line 653
    .local v2, "json":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 654
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "json":Ljava/lang/Object;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 662
    :cond_0
    if-eqz v1, :cond_1

    .line 663
    const-string v3, "FbSdkUserRequestListener.onCompleted hasError"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->cbid:Ljava/lang/String;

    const-string v5, "response hasError"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FbSdkUserRequestListener.onCompleted"

    invoke-static {v0, v7}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->cbid:Ljava/lang/String;

    const-string v5, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v3, v4, v6, v8}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "FbSdkUserRequestListener.onCompleted sucsess: "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-static {v3, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->cbid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_2
    const-string v3, "FbSdkUserRequestListener.onCompleted response not correct"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user = "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;->cbid:Ljava/lang/String;

    const-string v5, "response not correct"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v3, v4, v6, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
