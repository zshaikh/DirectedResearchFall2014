.class public Lcom/flurry/android/monolithic/sdk/impl/afx;
.super Lcom/flurry/android/monolithic/sdk/impl/afw;
.source "SourceFile"


# instance fields
.field protected final e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

.field protected f:I


# direct methods
.method protected constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/ow;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    .line 41
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->f:I

    .line 43
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/afx;
    .locals 3

    .prologue
    .line 56
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/afx;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/flurry/android/monolithic/sdk/impl/ow;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afx;-><init>([Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    instance-of v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    if-eqz v1, :cond_1

    .line 62
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afx;->a(Ljava/util/List;)V

    .line 66
    :goto_1
    instance-of v1, p1, Lcom/flurry/android/monolithic/sdk/impl/afx;

    if-eqz v1, :cond_2

    .line 67
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/afx;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/afx;->a(Ljava/util/List;)V

    .line 71
    :goto_2
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/afx;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/flurry/android/monolithic/sdk/impl/ow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/flurry/android/monolithic/sdk/impl/ow;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/afx;-><init>([Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    move-object v0, v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected A()Z
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->f:I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->f:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->d:Lcom/flurry/android/monolithic/sdk/impl/ow;

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

    array-length v1, v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->e:[Lcom/flurry/android/monolithic/sdk/impl/ow;

    aget-object v0, v0, v2

    .line 78
    instance-of v3, v0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    if-eqz v3, :cond_0

    .line 79
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afx;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afx;->a(Ljava/util/List;)V

    .line 76
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->d:Lcom/flurry/android/monolithic/sdk/impl/ow;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afx;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->d:Lcom/flurry/android/monolithic/sdk/impl/ow;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afx;->d:Lcom/flurry/android/monolithic/sdk/impl/ow;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->close()V

    .line 98
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afx;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void
.end method
