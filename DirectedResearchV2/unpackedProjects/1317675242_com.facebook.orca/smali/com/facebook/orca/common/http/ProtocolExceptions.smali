.class public Lcom/facebook/orca/common/http/ProtocolExceptions;
.super Ljava/lang/Object;
.source "ProtocolExceptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 17
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 22
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 27
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 39
    :goto_1
    return v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e(Ljava/lang/Throwable;)Lorg/apache/http/client/HttpResponseException;
    .locals 1

    .prologue
    .line 43
    .line 44
    :goto_0
    if-eqz p0, :cond_1

    .line 45
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lorg/apache/http/client/HttpResponseException;

    move-object v0, p0

    .line 50
    :goto_1
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
