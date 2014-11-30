.class public final Lcom/flurry/android/monolithic/sdk/impl/afa;
.super Lcom/flurry/android/monolithic/sdk/impl/afc;
.source "SourceFile"


# instance fields
.field final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/afc;-><init>()V

    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    return-void
.end method

.method public static a(J)Lcom/flurry/android/monolithic/sdk/impl/afa;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afa;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afa;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(J)V

    .line 82
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v4

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/afa;

    iget-wide v0, p1, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    long-to-int v0, v0

    return v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    return-wide v0
.end method

.method public l()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afa;->c:J

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
