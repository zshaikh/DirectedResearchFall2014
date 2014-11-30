.class public abstract Lcom/dolphin/browser/e/a;
.super Ljava/lang/Object;
.source "Cryptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "in"

    invoke-static {p0, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected static a([BII)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "data"

    invoke-static {p0, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v0, "offset"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(ILjava/lang/String;)V

    .line 38
    const-string v0, "length"

    invoke-static {p2, v0}, Lcom/dolphin/browser/e/c;->a(ILjava/lang/String;)V

    .line 39
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data range out or bounds: data.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a([B)[B
    .locals 2

    .prologue
    .line 85
    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/dolphin/browser/e/a;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract b([BII)[B
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
