.class Lcom/google/android/apps/analytics/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/u;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/analytics/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/analytics/u;[Lcom/google/android/apps/analytics/m;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Z)V
    .locals 11

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "dispatching hits in dry run mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->f(Lcom/google/android/apps/analytics/u;)I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/m;

    iget-object v0, v0, Lcom/google/android/apps/analytics/m;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/analytics/af;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string v0, ""

    move-object v3, v4

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f4

    if-ge v5, v6, :cond_5

    new-instance v3, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v5, "GET"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v4}, Lcom/google/android/apps/analytics/u;->c(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/s;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v5}, Lcom/google/android/apps/analytics/u;->c(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/s;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    const/16 v6, 0x50

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v5}, Lcom/google/android/apps/analytics/u;->c(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/s;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "Host"

    invoke-interface {v3, v5, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v5}, Lcom/google/android/apps/analytics/u;->g(Lcom/google/android/apps/analytics/u;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/analytics/i;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    if-lez v3, :cond_3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_4

    :cond_4
    const-string v3, ""

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_5
    new-instance v4, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v5, "POST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v5, "text/plain"

    invoke-interface {v4, v3, v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v4

    goto/16 :goto_2

    :cond_6
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "GoogleAnalyticsTracker"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x2000

    if-le v0, v4, :cond_8

    const-string v0, "GoogleAnalyticsTracker"

    const-string v3, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->h(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->a()V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->h(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->a()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->d(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/z;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/analytics/z;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_5

    :cond_a
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->d(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->a()V

    :cond_b
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/analytics/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/m;

    return-object v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0, p0}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;Lcom/google/android/apps/analytics/v;)Lcom/google/android/apps/analytics/v;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v3}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;)I

    move-result v3

    const/16 v4, 0x1f4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v3}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;)I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v3}, Lcom/google/android/apps/analytics/u;->b(Lcom/google/android/apps/analytics/u;)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-long v0, v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v3}, Lcom/google/android/apps/analytics/u;->b(Lcom/google/android/apps/analytics/u;)J

    move-result-wide v3

    const-wide/16 v5, 0x100

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    const-wide/16 v4, 0x2

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;J)J

    :cond_1
    :goto_1
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->c(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/analytics/v;->a(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    const-wide/16 v4, 0x2

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/analytics/u;->b(Lcom/google/android/apps/analytics/u;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Couldn\'t sleep."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->d(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->b()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->e(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/analytics/g;->a()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;Lcom/google/android/apps/analytics/v;)Lcom/google/android/apps/analytics/v;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with socket or streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with http streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
