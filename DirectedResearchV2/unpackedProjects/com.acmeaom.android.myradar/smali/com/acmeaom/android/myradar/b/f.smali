.class public Lcom/acmeaom/android/myradar/b/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 14
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "Cannot resolve server host name."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 16
    :cond_0
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1

    .line 17
    const-string v0, "Cannot verify SSL peer."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    .line 19
    const-string v0, "Cannot connect to server, failed SSL connection."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    instance-of v0, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v0, :cond_3

    .line 21
    const-string v0, "Cannot connect to server."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {p0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 29
    const-string v1, "kNetworkConnectivityError"

    invoke-virtual {v0, v1, p0}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
