.class Lcom/f/a/a/l;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:[Lorg/apache/http/Header;

.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic e:Lcom/f/a/a/h;


# direct methods
.method constructor <init>(Lcom/f/a/a/h;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/f/a/a/l;->e:Lcom/f/a/a/h;

    iput-object p2, p0, Lcom/f/a/a/l;->a:[B

    iput p3, p0, Lcom/f/a/a/l;->b:I

    iput-object p4, p0, Lcom/f/a/a/l;->c:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/f/a/a/l;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/f/a/a/l;->e:Lcom/f/a/a/h;

    iget-object v1, p0, Lcom/f/a/a/l;->a:[B

    invoke-virtual {v0, v1}, Lcom/f/a/a/h;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/f/a/a/l;->e:Lcom/f/a/a/h;

    new-instance v2, Lcom/f/a/a/m;

    invoke-direct {v2, p0, v0}, Lcom/f/a/a/m;-><init>(Lcom/f/a/a/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/f/a/a/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/f/a/a/l;->e:Lcom/f/a/a/h;

    new-instance v2, Lcom/f/a/a/n;

    invoke-direct {v2, p0, v0}, Lcom/f/a/a/n;-><init>(Lcom/f/a/a/l;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/f/a/a/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
