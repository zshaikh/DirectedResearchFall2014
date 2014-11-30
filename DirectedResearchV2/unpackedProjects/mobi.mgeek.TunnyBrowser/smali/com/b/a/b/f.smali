.class Lcom/b/a/b/f;
.super Lorg/apache/b/a/a/h;
.source "BoxFileUpload.java"


# instance fields
.field private a:Lcom/b/a/b/h;

.field private b:Lcom/b/a/b/g;


# direct methods
.method public constructor <init>(Lorg/apache/b/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/a/h;-><init>(Lorg/apache/b/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 310
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    if-eqz p2, :cond_0

    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/b/h;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/b/a/b/f;->a:Lcom/b/a/b/h;

    .line 334
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/g;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/b/a/b/g;

    iget-object v1, p0, Lcom/b/a/b/f;->a:Lcom/b/a/b/h;

    invoke-direct {v0, p1, v1}, Lcom/b/a/b/g;-><init>(Ljava/io/OutputStream;Lcom/b/a/b/h;)V

    iput-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/g;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/g;

    invoke-super {p0, v0}, Lorg/apache/b/a/a/h;->writeTo(Ljava/io/OutputStream;)V

    .line 342
    iget-object v0, p0, Lcom/b/a/b/f;->a:Lcom/b/a/b/h;

    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/g;

    invoke-virtual {v1}, Lcom/b/a/b/g;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/b/a/b/h;->a(J)V

    .line 343
    return-void
.end method
