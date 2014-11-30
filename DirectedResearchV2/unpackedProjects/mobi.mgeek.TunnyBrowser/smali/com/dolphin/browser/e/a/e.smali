.class public Lcom/dolphin/browser/e/a/e;
.super Lcom/dolphin/browser/e/a;
.source "RSACipherCryptor.java"


# instance fields
.field private a:Lcom/dolphin/browser/e/a/f;

.field private b:Lcom/dolphin/browser/e/a/h;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/e/a/f;Lcom/dolphin/browser/e/a/h;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/e/a;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/e/a/e;->a:Lcom/dolphin/browser/e/a/f;

    .line 44
    iput-object p2, p0, Lcom/dolphin/browser/e/a/e;->b:Lcom/dolphin/browser/e/a/h;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/e/b/c;Lcom/dolphin/browser/e/a/h;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dolphin/browser/e/a/f;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/e/a/f;-><init>(Lcom/dolphin/browser/e/b/b;)V

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/e/a/e;-><init>(Lcom/dolphin/browser/e/a/f;Lcom/dolphin/browser/e/a/h;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/e/a/e;->a:Lcom/dolphin/browser/e/a/f;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/e/a/e;->b:Lcom/dolphin/browser/e/a/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)[B
    .locals 7

    .prologue
    .line 49
    iget-object v1, p0, Lcom/dolphin/browser/e/a/e;->a:Lcom/dolphin/browser/e/a/f;

    .line 50
    iget-object v2, p0, Lcom/dolphin/browser/e/a/e;->b:Lcom/dolphin/browser/e/a/h;

    .line 51
    invoke-virtual {v1}, Lcom/dolphin/browser/e/a/f;->e()I

    move-result v3

    .line 52
    const/4 v0, 0x0

    .line 53
    if-gt p3, v3, :cond_0

    .line 54
    invoke-virtual {v1, p1, p2, p3}, Lcom/dolphin/browser/e/a/f;->b([BII)[B

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {v2}, Lcom/dolphin/browser/e/a/h;->d()Lcom/dolphin/browser/e/b/d;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/dolphin/browser/e/b/d;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v4

    .line 58
    invoke-virtual {v3}, Lcom/dolphin/browser/e/b/d;->c()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    .line 59
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/e/a/f;->a([B)[B

    move-result-object v1

    .line 60
    invoke-virtual {v2, p1, p2, p3}, Lcom/dolphin/browser/e/a/h;->b([BII)[B

    move-result-object v2

    .line 61
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v5, v1

    array-length v6, v3

    add-int/2addr v5, v6

    array-length v6, v2

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 63
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 66
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 70
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0
.end method
