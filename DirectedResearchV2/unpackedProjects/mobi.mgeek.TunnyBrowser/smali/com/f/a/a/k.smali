.class Lcom/f/a/a/k;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONException;

.field final synthetic b:Lcom/f/a/a/i;


# direct methods
.method constructor <init>(Lcom/f/a/a/i;Lorg/json/JSONException;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/f/a/a/k;->b:Lcom/f/a/a/i;

    iput-object p2, p0, Lcom/f/a/a/k;->a:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/f/a/a/k;->b:Lcom/f/a/a/i;

    iget-object v1, v0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iget-object v0, p0, Lcom/f/a/a/k;->b:Lcom/f/a/a/i;

    iget v2, v0, Lcom/f/a/a/i;->b:I

    iget-object v0, p0, Lcom/f/a/a/k;->b:Lcom/f/a/a/i;

    iget-object v3, v0, Lcom/f/a/a/i;->c:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/f/a/a/k;->a:Lorg/json/JSONException;

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 139
    return-void
.end method
