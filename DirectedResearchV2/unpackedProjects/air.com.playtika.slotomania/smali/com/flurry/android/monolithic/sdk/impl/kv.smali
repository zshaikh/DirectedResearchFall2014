.class public Lcom/flurry/android/monolithic/sdk/impl/kv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ld;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/android/monolithic/sdk/impl/ld;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/kv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/ji;

.field private b:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kv;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/kv;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    array-length v5, v4

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/lg;->a([BII[BII)I

    move-result v0

    return v0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 249
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->l()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    .line 250
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 234
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/kv;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kv;->a(Lcom/flurry/android/monolithic/sdk/impl/kv;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 260
    if-ne p1, p0, :cond_0

    move v0, v2

    .line 261
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/ld;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ld;

    invoke-interface {p1}, Lcom/flurry/android/monolithic/sdk/impl/ld;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kv;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
