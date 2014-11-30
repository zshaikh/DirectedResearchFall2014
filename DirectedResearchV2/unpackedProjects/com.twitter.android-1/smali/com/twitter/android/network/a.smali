.class public Lcom/twitter/android/network/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Z

.field private static final f:Lcom/twitter/android/util/SynchronizedDateFormat;

.field private static g:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final h:[Lcom/twitter/android/network/e;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Exception;

.field public d:Lcom/twitter/android/api/f;

.field private final i:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final j:Lorg/apache/http/client/HttpClient;

.field private final k:[B

.field private final l:Ljava/io/OutputStream;

.field private final m:Lcom/twitter/android/network/g;

.field private n:[Lcom/twitter/android/network/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "HttpOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/network/a;->e:Z

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/twitter/android/network/a;->f:Lcom/twitter/android/util/SynchronizedDateFormat;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/twitter/android/network/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/twitter/android/network/e;

    sput-object v0, Lcom/twitter/android/network/a;->h:[Lcom/twitter/android/network/e;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twitter/android/network/a;->k:[B

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twitter/android/network/b;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/a;->j:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcom/twitter/android/network/a;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p3, p0, Lcom/twitter/android/network/a;->l:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/twitter/android/network/a;->m:Lcom/twitter/android/network/g;

    return-void
.end method

.method public static a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v4, p4, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    move-object v4, v0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    new-instance v1, Lcom/twitter/android/network/h;

    invoke-direct {v1, p0, v0, p3, p5}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    return-object v1
.end method

.method public static a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;
    .locals 3

    new-instance v0, Lcom/twitter/android/network/k;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p3, p5}, Lcom/twitter/android/network/k;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpGet;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/android/network/d;->b(Lcom/twitter/android/network/a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/android/network/a;

    invoke-direct {v1, p0, v0, p4}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, v1}, Lcom/twitter/android/network/d;->b(Lcom/twitter/android/network/a;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    .locals 11

    const v10, 0x7a120

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v3, v7

    sget-boolean v5, Lcom/twitter/android/network/a;->e:Z

    if-eqz v5, :cond_2

    const-string v5, "HttpOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read: Encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/twitter/android/network/a;->m:Lcom/twitter/android/network/g;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/twitter/android/network/l;

    int-to-long v7, v3

    iget-object v9, p0, Lcom/twitter/android/network/a;->m:Lcom/twitter/android/network/g;

    invoke-direct {v5, p2, v7, v8, v9}, Lcom/twitter/android/network/l;-><init>(Ljava/io/OutputStream;JLcom/twitter/android/network/g;)V

    move-object p2, v5

    :cond_3
    if-eqz v6, :cond_0

    const-string v5, "application/octet-stream"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "binary/octet-stream"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_4
    move-object v0, v1

    move v1, v3

    :goto_2
    iget-object v3, p0, Lcom/twitter/android/network/a;->k:[B

    if-gez v1, :cond_e

    move v1, v4

    :cond_5
    const/4 v5, 0x0

    :try_start_0
    array-length v7, v3

    invoke-virtual {v0, v3, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v2, :cond_11

    if-eqz p2, :cond_6

    const/4 v7, 0x0

    invoke-virtual {p2, v3, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_6
    add-int/2addr v1, v5

    if-le v1, v10, :cond_5

    new-instance v5, Lcom/twitter/android/network/ContentLengthIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content too large (length unknown): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/twitter/android/network/ContentLengthIOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    :cond_7
    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_7

    invoke-static {v0}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_8

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_3
    throw v1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    const-string v5, "application/json"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v0, :cond_12

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v2

    goto :goto_2

    :cond_b
    const-string v5, "text/html"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "text/xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "application/xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    if-eqz v0, :cond_12

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v2

    goto/16 :goto_2

    :cond_d
    const-string v0, "image/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-le v1, v10, :cond_10

    :try_start_2
    new-instance v5, Lcom/twitter/android/network/ContentLengthIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/twitter/android/network/ContentLengthIOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    if-lez v5, :cond_10

    sub-int/2addr v1, v5

    if-eqz p2, :cond_10

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_10
    if-lez v1, :cond_11

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_f

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid content length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    array-length v1, v3

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_11

    invoke-static {v0}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_12
    move-object v0, v1

    move v1, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lcom/twitter/android/network/a;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/twitter/android/network/a;
    .locals 14

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/twitter/android/network/a;->l:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/twitter/android/network/a;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    sget-object v1, Lcom/twitter/android/network/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/network/a;->a(J)V

    sget-boolean v1, Lcom/twitter/android/network/a;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/network/a;->j:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/twitter/android/network/a;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "HttpOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sparse-switch v2, :sswitch_data_0

    const/4 p1, 0x0

    :cond_3
    :goto_0
    :sswitch_0
    if-gtz p1, :cond_8

    const-string v3, "X-RateLimit-Limit"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v3, "X-RateLimit-Remaining"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v3, "X-RateLimit-Reset"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    new-instance v3, Lcom/twitter/android/api/f;

    invoke-direct {v3, v8, v7, v10, v11}, Lcom/twitter/android/api/f;-><init>(IIJ)V

    :goto_1
    iput-object v3, p0, Lcom/twitter/android/network/a;->d:Lcom/twitter/android/api/f;

    invoke-direct {p0, v9, v4}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_2
    iput v2, p0, Lcom/twitter/android/network/a;->a:I

    iput-object v1, p0, Lcom/twitter/android/network/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/android/network/e;

    iput-object v0, p0, Lcom/twitter/android/network/a;->n:[Lcom/twitter/android/network/e;

    iget-object v0, p0, Lcom/twitter/android/network/a;->n:[Lcom/twitter/android/network/e;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :sswitch_1
    :try_start_1
    const-string v3, "Date"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v10, Lcom/twitter/android/network/a;->f:Lcom/twitter/android/util/SynchronizedDateFormat;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/twitter/android/util/SynchronizedDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v3, Lcom/twitter/android/network/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/twitter/android/network/a;->e:Z

    if-eqz v1, :cond_4

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/android/network/ContentLengthIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const/16 v2, 0x1a1

    invoke-virtual {v0}, Lcom/twitter/android/network/ContentLengthIOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v9, v3}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    new-instance v3, Lcom/twitter/android/network/e;

    invoke-direct {v3, v2, v1}, Lcom/twitter/android/network/e;-><init>(ILjava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/twitter/android/network/e;->b:Ljava/lang/Exception;

    iput-wide v7, v3, Lcom/twitter/android/network/e;->c:J

    new-instance v3, Lcom/twitter/android/network/e;

    invoke-direct {v3, v2, v1}, Lcom/twitter/android/network/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    sget-boolean v1, Lcom/twitter/android/network/a;->e:Z

    if-eqz v1, :cond_9

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(J)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/twitter/android/network/a;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()[Lcom/twitter/android/network/e;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/network/a;->n:[Lcom/twitter/android/network/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/twitter/android/network/a;->h:[Lcom/twitter/android/network/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/network/a;->n:[Lcom/twitter/android/network/e;

    goto :goto_0
.end method

.method public final d()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/network/a;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
