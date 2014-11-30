.class public Lorg/apache/c/c/a;
.super Lorg/apache/c/c/b;
.source "THttpClient.java"


# instance fields
.field private a:Ljava/net/URL;

.field private final b:Ljava/io/ByteArrayOutputStream;

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lorg/apache/c/c/b;-><init>()V

    .line 38
    iput-object v1, p0, Lorg/apache/c/c/a;->a:Ljava/net/URL;

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/c/c/a;->b:Ljava/io/ByteArrayOutputStream;

    .line 43
    iput-object v1, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    .line 45
    iput v2, p0, Lorg/apache/c/c/a;->d:I

    .line 47
    iput v2, p0, Lorg/apache/c/c/a;->e:I

    .line 49
    iput-object v1, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/c/c/a;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/apache/c/c/c;

    const-string v1, "Response buffer is empty, no request."

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 102
    new-instance v0, Lorg/apache/c/c/c;

    const-string v1, "No more data available."

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_1
    return v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/c/c/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 117
    iget-object v0, p0, Lorg/apache/c/c/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/apache/c/c/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 124
    iget v1, p0, Lorg/apache/c/c/a;->d:I

    if-lez v1, :cond_0

    .line 125
    iget v1, p0, Lorg/apache/c/c/a;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    :cond_0
    iget v1, p0, Lorg/apache/c/c/a;->e:I

    if-lez v1, :cond_1

    .line 128
    iget v1, p0, Lorg/apache/c/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    :cond_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 133
    const-string v1, "Content-Type"

    const-string v2, "application/x-thrift"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "Accept"

    const-string v2, "application/x-thrift"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "User-Agent"

    const-string v2, "Java/THttpClient"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 145
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 146
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 147
    new-instance v0, Lorg/apache/c/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/c/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/c/c/a;->c:Ljava/io/InputStream;

    .line 89
    :cond_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b([BII)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/c/c/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    return-void
.end method
