.class public final Lcom/flurry/android/monolithic/sdk/impl/adh;
.super Lcom/flurry/android/monolithic/sdk/impl/adi;
.source "SourceFile"


# instance fields
.field protected final a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adh;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/flurry/android/monolithic/sdk/impl/adi;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/adh;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adh;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adh;
    .locals 6

    .prologue
    .line 109
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adh;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->f:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adh;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adh;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->g:Ljava/lang/Object;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adh;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 141
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    const/4 v1, 0x1

    .line 143
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    array-length v3, v2

    move v4, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v2, v1

    .line 144
    if-eqz v4, :cond_0

    move v4, v7

    .line 149
    :goto_1
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/afm;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adh;
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->f:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adh;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->g:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adh;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(I)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.widenContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 248
    :goto_0
    return v0

    .line 226
    :cond_0
    if-nez p1, :cond_1

    move v0, v6

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v6

    goto :goto_0

    .line 229
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/adh;

    .line 232
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/adh;->d:Ljava/lang/Class;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->d:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 236
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 237
    if-nez v0, :cond_6

    .line 238
    if-eqz v1, :cond_4

    array-length v0, v1

    if-nez v0, :cond_5

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0

    .line 240
    :cond_6
    if-nez v1, :cond_7

    move v0, v6

    goto :goto_0

    .line 242
    :cond_7
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_8

    move v0, v6

    goto :goto_0

    .line 243
    :cond_8
    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_a

    .line 244
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/afm;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move v0, v6

    .line 245
    goto :goto_0

    .line 243
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    move v0, v7

    .line 248
    goto :goto_0
.end method

.method public synthetic f(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adh;->a:[Lcom/flurry/android/monolithic/sdk/impl/afm;

    array-length v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/adh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
