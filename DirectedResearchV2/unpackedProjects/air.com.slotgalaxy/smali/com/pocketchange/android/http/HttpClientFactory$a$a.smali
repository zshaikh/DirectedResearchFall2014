.class Lcom/pocketchange/android/http/HttpClientFactory$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/HttpClientFactory$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/pocketchange/android/http/HttpClientFactory$a$a;->a:J

    .line 70
    return-void
.end method

.method synthetic constructor <init>(JLcom/pocketchange/android/http/HttpClientFactory$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/pocketchange/android/http/HttpClientFactory$a$a;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 73
    const-wide/16 v0, -0x1

    .line 74
    new-instance v2, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v3, "Keep-Alive"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    const-string v5, "timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 81
    if-eqz v3, :cond_0

    .line 85
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    goto :goto_0

    .line 88
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-wide v0, p0, Lcom/pocketchange/android/http/HttpClientFactory$a$a;->a:J

    :goto_1
    return-wide v0

    :cond_2
    iget-wide v2, p0, Lcom/pocketchange/android/http/HttpClientFactory$a$a;->a:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v3

    goto :goto_0
.end method
