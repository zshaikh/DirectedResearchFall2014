.class Lcom/f/a/a/i;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:[Lorg/apache/http/Header;

.field final synthetic d:Lcom/f/a/a/h;


# direct methods
.method constructor <init>(Lcom/f/a/a/h;[BI[Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iput-object p2, p0, Lcom/f/a/a/i;->a:[B

    iput p3, p0, Lcom/f/a/a/i;->b:I

    iput-object p4, p0, Lcom/f/a/a/i;->c:[Lorg/apache/http/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    iget-object v1, p0, Lcom/f/a/a/i;->a:[B

    invoke-virtual {v0, v1}, Lcom/f/a/a/h;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    new-instance v2, Lcom/f/a/a/j;

    invoke-direct {v2, p0, v0}, Lcom/f/a/a/j;-><init>(Lcom/f/a/a/i;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/f/a/a/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/f/a/a/i;->d:Lcom/f/a/a/h;

    new-instance v2, Lcom/f/a/a/k;

    invoke-direct {v2, p0, v0}, Lcom/f/a/a/k;-><init>(Lcom/f/a/a/i;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/f/a/a/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
