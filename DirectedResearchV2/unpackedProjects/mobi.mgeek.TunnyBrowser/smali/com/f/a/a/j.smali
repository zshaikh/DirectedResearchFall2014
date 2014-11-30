.class Lcom/f/a/a/j;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/f/a/a/i;


# direct methods
.method constructor <init>(Lcom/f/a/a/i;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iput-object p2, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v1, v0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget v2, v0, Lcom/f/a/a/i;->b:I

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v3, v0, Lcom/f/a/a/i;->c:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v1, v0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget v2, v0, Lcom/f/a/a/i;->b:I

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v3, v0, Lcom/f/a/a/i;->c:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v1, v0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget v2, v0, Lcom/f/a/a/i;->b:I

    iget-object v0, p0, Lcom/f/a/a/j;->b:Lcom/f/a/a/i;

    iget-object v3, v0, Lcom/f/a/a/i;->c:[Lorg/apache/http/Header;

    new-instance v4, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/f/a/a/j;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
