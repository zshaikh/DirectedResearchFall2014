.class public final Lcom/twitter/android/network/f;
.super Lorg/apache/http/entity/AbstractHttpEntity;


# instance fields
.field private final a:Lcom/twitter/android/network/g;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/twitter/android/network/g;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/network/f;->b:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/twitter/android/network/f;->a:Lcom/twitter/android/network/g;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=twitter"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/network/f;->contentType:Lorg/apache/http/Header;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/network/f;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/network/f;->b:Ljava/lang/StringBuilder;

    const-string v1, "--twitter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding: binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/twitter/android/network/f;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/network/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    const-string v2, "\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/network/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p3

    invoke-virtual {v0, p3, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    const-string v1, "\r\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v0, p3

    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/network/f;->b:Ljava/lang/StringBuilder;

    const-string v1, "--twitter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/twitter/android/network/f;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/network/f;->b:Ljava/lang/StringBuilder;

    const-string v1, "--twitter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/twitter/android/network/f;->b()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/network/f;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Lcom/twitter/android/network/l;

    invoke-virtual {p0}, Lcom/twitter/android/network/f;->getContentLength()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/network/f;->a:Lcom/twitter/android/network/g;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/twitter/android/network/l;-><init>(Ljava/io/OutputStream;JLcom/twitter/android/network/g;)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
