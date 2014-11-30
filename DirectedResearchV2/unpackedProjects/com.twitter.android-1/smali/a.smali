.class public abstract La;
.super Lc;


# instance fields
.field protected a:[B

.field private r:Ljava/io/InputStream;

.field private s:Z


# direct methods
.method protected constructor <init>(Ld;ILjava/io/InputStream;[BIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc;-><init>(Ld;I)V

    iput-object p3, p0, La;->r:Ljava/io/InputStream;

    iput-object p4, p0, La;->a:[B

    iput p5, p0, La;->c:I

    iput p6, p0, La;->d:I

    iput-boolean p7, p0, La;->s:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, La;->e:J

    iget v3, p0, La;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, La;->e:J

    iget v1, p0, La;->g:I

    iget v2, p0, La;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, La;->g:I

    iget-object v1, p0, La;->r:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, La;->r:Ljava/io/InputStream;

    iget-object v2, p0, La;->a:[B

    iget-object v3, p0, La;->a:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    iput v0, p0, La;->c:I

    iput v1, p0, La;->d:I

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, La;->b()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, La;->r:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, La;->b:Ld;

    invoke-virtual {v0}, Ld;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, La;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, La;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, La;->r:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-super {p0}, Lc;->c()V

    iget-boolean v0, p0, La;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La;->a:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, La;->a:[B

    iget-object v1, p0, La;->b:Ld;

    invoke-virtual {v1, v0}, Ld;->a([B)V

    :cond_0
    return-void
.end method
