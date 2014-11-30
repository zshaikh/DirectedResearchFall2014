.class public Lcom/f/a/a/h;
.super Lcom/f/a/a/v;
.source "JsonHttpResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/f/a/a/v;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a([B)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/f/a/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/f/a/a/h;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    :cond_2
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 209
    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;[B)V
    .locals 2

    .prologue
    .line 115
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/f/a/a/i;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/f/a/a/i;-><init>(Lcom/f/a/a/h;[BI[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 151
    if-eqz p3, :cond_0

    .line 152
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/f/a/a/l;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/f/a/a/l;-><init>(Lcom/f/a/a/h;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/f/a/a/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
