.class public final Lcom/flurry/android/monolithic/sdk/impl/tj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/sw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->c:I

    .line 29
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->c:I

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/tj;->a(I)I

    move-result v0

    .line 30
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->b:I

    .line 31
    new-array v1, v0, [Lcom/flurry/android/monolithic/sdk/impl/tk;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 33
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/sw;->c()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->b:I

    and-int/2addr v4, v5

    .line 35
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/tk;

    aget-object v6, v1, v4

    invoke-direct {v5, v6, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/tk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tk;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/sw;)V

    aput-object v5, v1, v4

    goto :goto_0

    .line 37
    :cond_0
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    .line 38
    return-void
.end method

.method private static final a(I)I
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    add-int v0, p0, p0

    .line 56
    :goto_0
    const/4 v1, 0x2

    .line 57
    :goto_1
    if-ge v1, v0, :cond_1

    .line 58
    add-int/2addr v1, v1

    goto :goto_1

    .line 55
    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_0

    .line 60
    :cond_1
    return v1
.end method

.method private a(Ljava/lang/String;I)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    aget-object v0, v0, p2

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 177
    :goto_1
    return-object v0

    .line 175
    :cond_0
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/tk;->a:Lcom/flurry/android/monolithic/sdk/impl/tk;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->b:I

    and-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    aget-object v1, v1, v0

    .line 83
    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 88
    iget-object v0, v1, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/tk;->a:Lcom/flurry/android/monolithic/sdk/impl/tk;

    if-eqz v1, :cond_2

    .line 91
    iget-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 92
    iget-object v0, v1, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/tj;->a(Ljava/lang/String;I)Lcom/flurry/android/monolithic/sdk/impl/sw;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    .line 45
    :goto_1
    if-eqz v3, :cond_0

    .line 46
    iget-object v5, v3, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(I)V

    .line 47
    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/tk;->a:Lcom/flurry/android/monolithic/sdk/impl/tk;

    move v4, v6

    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/sw;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/sw;->c()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    array-length v2, v2

    sub-int/2addr v2, v8

    and-int/2addr v1, v2

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    aget-object v4, v4, v1

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    :goto_0
    if-eqz v2, :cond_1

    .line 118
    if-nez v3, :cond_0

    iget-object v5, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v8

    .line 116
    :goto_1
    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->a:Lcom/flurry/android/monolithic/sdk/impl/tk;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/tk;

    iget-object v6, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    invoke-direct {v5, v4, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/tk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tk;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/sw;)V

    move-object v4, v5

    goto :goto_1

    .line 125
    :cond_1
    if-nez v3, :cond_2

    .line 126
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found, can\'t replace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/tk;

    invoke-direct {v3, v4, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/tk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tk;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/sw;)V

    aput-object v3, v2, v1

    .line 132
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->c:I

    return v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/sw;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 143
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/sw;->c()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    array-length v2, v2

    sub-int/2addr v2, v8

    and-int/2addr v1, v2

    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v3, 0x0

    .line 148
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    aget-object v4, v4, v1

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    :goto_0
    if-eqz v2, :cond_1

    .line 150
    if-nez v3, :cond_0

    iget-object v5, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v8

    .line 148
    :goto_1
    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->a:Lcom/flurry/android/monolithic/sdk/impl/tk;

    goto :goto_0

    .line 153
    :cond_0
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/tk;

    iget-object v6, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/flurry/android/monolithic/sdk/impl/tk;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    invoke-direct {v5, v4, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/tk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tk;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/sw;)V

    move-object v4, v5

    goto :goto_1

    .line 156
    :cond_1
    if-nez v3, :cond_2

    .line 157
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found, can\'t remove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    aput-object v4, v0, v1

    .line 160
    return-void
.end method

.method public c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/sw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/tl;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tj;->a:[Lcom/flurry/android/monolithic/sdk/impl/tk;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tl;-><init>([Lcom/flurry/android/monolithic/sdk/impl/tk;)V

    return-object v0
.end method
