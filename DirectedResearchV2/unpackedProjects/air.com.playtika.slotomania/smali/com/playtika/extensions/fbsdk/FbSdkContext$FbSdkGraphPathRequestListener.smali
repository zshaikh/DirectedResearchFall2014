.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;
.super Ljava/lang/Object;
.source "FbSdkContext.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbSdkGraphPathRequestListener"
.end annotation


# instance fields
.field private final cbid:Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V
    .locals 0
    .param p2, "cbid"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;

    .line 549
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->jsonFill(Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;)Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    return-object v0
.end method

.method private jsonFill(Lcom/facebook/Response;Lcom/facebook/model/GraphObject;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/Response;
    .param p2, "graphObject"    # Lcom/facebook/model/GraphObject;

    .prologue
    const-string v7, "response "

    const-string v8, "error"

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "answer":Ljava/lang/String;
    const/4 v2, 0x0

    .line 609
    .local v2, "hasError":Z
    :try_start_0
    invoke-interface {p2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v4, "GraphPath answer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "answer "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    .line 613
    .local v3, "json":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 614
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "json":Ljava/lang/Object;
    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 622
    :cond_0
    if-eqz v2, :cond_1

    .line 623
    const-string v4, "GraphPath response hasError"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;

    const-string v6, "response hasError"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GraphPath exception"

    invoke-static {v1, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 618
    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v4, v5, v6, v8}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 627
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "GraphPath response sucsess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;->cbid:Ljava/lang/String;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 556
    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;

    invoke-direct {v0, p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;Lcom/facebook/Response;)V

    .line 601
    invoke-virtual {v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener$1;->start()V

    .line 602
    return-void
.end method
