.class final Lcom/facebook/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/Request$GraphUserCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphUserCallback;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    const-class v1, Lcom/facebook/model/GraphUser;

    invoke-virtual {p1, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    .end local p0    # "this":Lcom/facebook/Request$1;
    check-cast p0, Lcom/facebook/model/GraphUser;

    invoke-interface {v0, p0, p1}, Lcom/facebook/Request$GraphUserCallback;->onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V

    .line 270
    :cond_0
    return-void
.end method
