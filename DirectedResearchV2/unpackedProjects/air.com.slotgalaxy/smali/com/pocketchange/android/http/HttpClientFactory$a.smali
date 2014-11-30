.class Lcom/pocketchange/android/http/HttpClientFactory$a;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/http/HttpClientFactory$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 62
    new-instance v0, Lcom/pocketchange/android/http/HttpClientFactory$a$a;

    const-wide/32 v1, 0x2bf20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pocketchange/android/http/HttpClientFactory$a$a;-><init>(JLcom/pocketchange/android/http/HttpClientFactory$1;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/http/HttpClientFactory$a;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/pocketchange/android/http/HttpClientFactory$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/pocketchange/android/http/HttpClientFactory$a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 57
    new-instance v0, Lcom/pocketchange/android/http/HttpClientFactory$a$a;

    const-wide/32 v1, 0x2bf20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pocketchange/android/http/HttpClientFactory$a$a;-><init>(JLcom/pocketchange/android/http/HttpClientFactory$1;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/http/HttpClientFactory$a;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/params/HttpParams;Lcom/pocketchange/android/http/HttpClientFactory$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/pocketchange/android/http/HttpClientFactory$a;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method
