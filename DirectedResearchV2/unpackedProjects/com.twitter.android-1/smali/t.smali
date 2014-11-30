.class public abstract Lt;
.super Lc;


# instance fields
.field protected a:[C

.field private r:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Ld;ILjava/io/Reader;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lc;-><init>(Ld;I)V

    iput-object p3, p0, Lt;->r:Ljava/io/Reader;

    invoke-virtual {p1}, Ld;->e()[C

    move-result-object v0

    iput-object v0, p0, Lt;->a:[C

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lt;->e:J

    iget v3, p0, Lt;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lt;->e:J

    iget v1, p0, Lt;->g:I

    iget v2, p0, Lt;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lt;->g:I

    iget-object v1, p0, Lt;->r:Ljava/io/Reader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt;->r:Ljava/io/Reader;

    iget-object v2, p0, Lt;->a:[C

    iget-object v3, p0, Lt;->a:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-lez v1, :cond_1

    iput v0, p0, Lt;->c:I

    iput v1, p0, Lt;->d:I

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lt;->b()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lt;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lt;->r:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt;->b:Ld;

    invoke-virtual {v0}, Ld;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lt;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lt;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lt;->r:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-super {p0}, Lc;->c()V

    iget-object v0, p0, Lt;->a:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lt;->a:[C

    iget-object v1, p0, Lt;->b:Ld;

    invoke-virtual {v1, v0}, Ld;->a([C)V

    :cond_0
    return-void
.end method

.method protected final e(Ljava/lang/String;)C
    .locals 3

    iget v0, p0, Lt;->c:I

    iget v1, p0, Lt;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lt;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lt;->a:[C

    iget v1, p0, Lt;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt;->c:I

    aget-char v0, v0, v1

    return v0
.end method
