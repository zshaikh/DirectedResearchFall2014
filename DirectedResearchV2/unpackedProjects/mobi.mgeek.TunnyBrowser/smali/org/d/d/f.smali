.class Lorg/d/d/f;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/d/d/j;

.field private c:Lorg/d/d/e;

.field private d:Lorg/d/d/e;

.field private e:Ljava/util/Map;
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

.field private f:Ljava/lang/String;

.field private g:Ljava/net/HttpURLConnection;

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:Z

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/d/d/j;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lorg/d/d/f;->f:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/d/d/f;->i:[B

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/d/d/f;->j:Z

    .line 32
    iput-object v1, p0, Lorg/d/d/f;->k:Ljava/lang/Long;

    .line 33
    iput-object v1, p0, Lorg/d/d/f;->l:Ljava/lang/Long;

    .line 43
    iput-object p1, p0, Lorg/d/d/f;->b:Lorg/d/d/j;

    .line 44
    iput-object p2, p0, Lorg/d/d/f;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/d/d/e;

    invoke-direct {v0}, Lorg/d/d/e;-><init>()V

    iput-object v0, p0, Lorg/d/d/f;->c:Lorg/d/d/e;

    .line 46
    new-instance v0, Lorg/d/d/e;

    invoke-direct {v0}, Lorg/d/d/e;-><init>()V

    iput-object v0, p0, Lorg/d/d/f;->d:Lorg/d/d/e;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/d/d/f;->e:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/d/d/f;->h()Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 75
    const-string v2, "http.keepAlive"

    iget-boolean v0, p0, Lorg/d/d/f;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/d/d/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lorg/d/d/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method a(Ljava/net/HttpURLConnection;[B)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Content-Length"

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 126
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/d/d/f;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/d/d/f;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/d/d/f;->c:Lorg/d/d/e;

    invoke-virtual {v0, p1, p2}, Lorg/d/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public c()Lorg/d/d/j;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/d/d/f;->b:Lorg/d/d/j;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/d/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/d/d/f;->a:Ljava/lang/String;

    const-string v1, "\\?.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\:\\d{4}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/d/d/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/d/d/e;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/d/d/f;->d:Lorg/d/d/e;

    return-object v0
.end method

.method public g()Lorg/d/d/e;
    .locals 3

    .prologue
    .line 196
    :try_start_0
    new-instance v0, Lorg/d/d/e;

    invoke-direct {v0}, Lorg/d/d/e;-><init>()V

    .line 197
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/d/d/f;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lorg/d/d/e;->b(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lorg/d/d/f;->c:Lorg/d/d/e;

    invoke-virtual {v0, v1}, Lorg/d/d/e;->a(Lorg/d/d/e;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Lorg/d/b/b;

    const-string v2, "Malformed URL"

    invoke-direct {v1, v2, v0}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/d/d/f;->c:Lorg/d/d/e;

    iget-object v1, p0, Lorg/d/d/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/d/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/d/d/g;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Lorg/d/d/f;->a()V

    .line 62
    invoke-virtual {p0}, Lorg/d/d/f;->j()Lorg/d/d/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lorg/d/b/a;

    invoke-direct {v1, v0}, Lorg/d/b/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method j()Lorg/d/d/g;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/d/d/f;->b:Lorg/d/d/j;

    invoke-virtual {v1}, Lorg/d/d/j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/d/d/f;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/d/d/f;->k:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/d/d/f;->l:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/d/d/f;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lorg/d/d/f;->a(Ljava/net/HttpURLConnection;)V

    .line 102
    iget-object v0, p0, Lorg/d/d/f;->b:Lorg/d/d/j;

    sget-object v1, Lorg/d/d/j;->c:Lorg/d/d/j;

    invoke-virtual {v0, v1}, Lorg/d/d/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/d/d/f;->b:Lorg/d/d/j;

    sget-object v1, Lorg/d/d/j;->b:Lorg/d/d/j;

    invoke-virtual {v0, v1}, Lorg/d/d/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/d/d/f;->k()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/d/d/f;->a(Ljava/net/HttpURLConnection;[B)V

    .line 106
    :cond_3
    new-instance v0, Lorg/d/d/g;

    iget-object v1, p0, Lorg/d/d/f;->g:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lorg/d/d/g;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method k()[B
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lorg/d/d/f;->i:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/d/d/f;->i:[B

    .line 262
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/d/d/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/d/d/f;->f:Ljava/lang/String;

    .line 262
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/d/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/d/d/f;->d:Lorg/d/d/e;

    invoke-virtual {v0}, Lorg/d/d/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lorg/d/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/d/d/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    const-string v0, "@Request(%s %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/d/d/f;->c()Lorg/d/d/j;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/d/d/f;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
