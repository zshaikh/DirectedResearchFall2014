.class public abstract Lcom/f/a/a/v;
.super Lcom/f/a/a/f;
.source "TextHttpResponseHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/f/a/a/f;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/f/a/a/v;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v2, "TextHttpResponseHandler"

    const-string v3, "Encoding response into string failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end method

.method public abstract a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public a(I[Lorg/apache/http/Header;[B)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/f/a/a/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/f/a/a/v;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/f/a/a/v;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/f/a/a/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/f/a/a/v;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/f/a/a/v;->a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method
