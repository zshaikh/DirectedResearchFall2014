.class public Lcom/android/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/android/a/j;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/android/a/a/k;

.field protected final c:Lcom/android/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/a/ab;->b:Z

    sput-boolean v0, Lcom/android/a/a/a;->a:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcom/android/a/a/a;->d:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcom/android/a/a/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/a/a/k;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/a/a/b;

    sget v1, Lcom/android/a/a/a;->e:I

    invoke-direct {v0, v1}, Lcom/android/a/a/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/a/a/a;-><init>(Lcom/android/a/a/k;Lcom/android/a/a/b;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/a/a/k;Lcom/android/a/a/b;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/a/a/a;->b:Lcom/android/a/a/k;

    .line 79
    iput-object p2, p0, Lcom/android/a/a/a;->c:Lcom/android/a/a/b;

    .line 80
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 244
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 245
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method

.method private a(JLcom/android/a/p;[BLorg/apache/http/StatusLine;)V
    .locals 4

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/a/a/a;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/a/a/a;->d:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 161
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/a/p;->t()Lcom/android/a/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/a/x;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/a/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_1
    return-void

    .line 161
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/android/a/p;Lcom/android/a/aa;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/android/a/p;->t()Lcom/android/a/x;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/android/a/p;->s()I

    move-result v1

    .line 179
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/a/x;->a(Lcom/android/a/aa;)V
    :try_end_0
    .catch Lcom/android/a/aa; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/android/a/c;)V
    .locals 4

    .prologue
    .line 190
    if-nez p2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p2, Lcom/android/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 195
    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/android/a/c;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_2
    iget-wide v0, p2, Lcom/android/a/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/a/c;->c:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 200
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    new-instance v2, Lcom/android/a/a/q;

    iget-object v0, p0, Lcom/android/a/a/a;->c:Lcom/android/a/a/b;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v2, v0, v1}, Lcom/android/a/a/q;-><init>(Lcom/android/a/a/b;I)V

    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/a/y;

    invoke-direct {v0}, Lcom/android/a/y;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    .line 228
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/android/a/a/a;->c:Lcom/android/a/a/b;

    invoke-virtual {v3, v1}, Lcom/android/a/a/b;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/android/a/a/q;->close()V

    throw v0

    .line 219
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/a/a/a;->c:Lcom/android/a/a/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/a/a/b;->a(I)[B

    move-result-object v1

    .line 221
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 222
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/a/a/q;->write([BII)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v2}, Lcom/android/a/a/q;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 228
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 234
    :goto_2
    iget-object v3, p0, Lcom/android/a/a/a;->c:Lcom/android/a/a/b;

    invoke-virtual {v3, v1}, Lcom/android/a/a/b;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/android/a/a/q;->close()V

    return-object v0

    .line 229
    :catch_0
    move-exception v3

    .line 232
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/a/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    :catch_1
    move-exception v3

    .line 232
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/a/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/a/p;)Lcom/android/a/m;
    .locals 11

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 86
    :goto_0
    const/4 v2, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/android/a/p;->h()Lcom/android/a/c;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/a/a/a;->a(Ljava/util/Map;Lcom/android/a/c;)V

    .line 93
    iget-object v3, p0, Lcom/android/a/a/a;->b:Lcom/android/a/a/k;

    invoke-interface {v3, p1, v0}, Lcom/android/a/a/k;->a(Lcom/android/a/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 94
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 95
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 97
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/a/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v6

    .line 99
    const/16 v0, 0x130

    if-ne v10, v0, :cond_1

    .line 100
    :try_start_2
    new-instance v0, Lcom/android/a/m;

    const/16 v2, 0x130

    invoke-virtual {p1}, Lcom/android/a/p;->h()Lcom/android/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v6, v3}, Lcom/android/a/m;-><init>(I[BLjava/util/Map;Z)V

    .line 121
    :goto_2
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/android/a/p;->h()Lcom/android/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/android/a/c;->a:[B

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/a/a/a;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    .line 115
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v1, v0, v8

    move-object v0, p0

    move-object v3, p1

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/android/a/a/a;->a(JLcom/android/a/p;[BLorg/apache/http/StatusLine;)V

    .line 118
    const/16 v0, 0xc8

    if-lt v10, v0, :cond_2

    const/16 v0, 0x12b

    if-le v10, v0, :cond_4

    .line 119
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v0, "socket"

    new-instance v1, Lcom/android/a/z;

    invoke-direct {v1}, Lcom/android/a/z;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/a/a/a;->a(Ljava/lang/String;Lcom/android/a/p;Lcom/android/a/aa;)V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    new-array v4, v0, [B

    goto :goto_3

    .line 121
    :cond_4
    new-instance v0, Lcom/android/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v4, v6, v1}, Lcom/android/a/m;-><init>(I[BLjava/util/Map;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v0, "connection"

    new-instance v1, Lcom/android/a/z;

    invoke-direct {v1}, Lcom/android/a/z;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/a/a/a;->a(Ljava/lang/String;Lcom/android/a/p;Lcom/android/a/aa;)V

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/a/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_3
    move-exception v0

    .line 130
    :goto_4
    const/4 v3, 0x0

    .line 131
    if-eqz v2, :cond_6

    .line 132
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 136
    const-string v2, "Unexpected response code %d for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/android/a/p;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/android/a/ab;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    if-eqz v4, :cond_8

    .line 138
    new-instance v2, Lcom/android/a/m;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/a/m;-><init>(I[BLjava/util/Map;Z)V

    .line 140
    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0x193

    if-ne v0, v1, :cond_7

    .line 142
    :cond_5
    const-string v0, "auth"

    new-instance v1, Lcom/android/a/a;

    invoke-direct {v1, v2}, Lcom/android/a/a;-><init>(Lcom/android/a/m;)V

    invoke-static {v0, p1, v1}, Lcom/android/a/a/a;->a(Ljava/lang/String;Lcom/android/a/p;Lcom/android/a/aa;)V

    goto/16 :goto_0

    .line 134
    :cond_6
    new-instance v1, Lcom/android/a/n;

    invoke-direct {v1, v0}, Lcom/android/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_7
    new-instance v0, Lcom/android/a/y;

    invoke-direct {v0, v2}, Lcom/android/a/y;-><init>(Lcom/android/a/m;)V

    throw v0

    .line 149
    :cond_8
    new-instance v0, Lcom/android/a/l;

    invoke-direct {v0, v3}, Lcom/android/a/l;-><init>(Lcom/android/a/m;)V

    throw v0

    .line 128
    :catch_4
    move-exception v0

    move-object v2, v7

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_4
.end method
