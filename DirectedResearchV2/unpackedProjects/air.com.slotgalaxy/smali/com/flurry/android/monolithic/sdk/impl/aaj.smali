.class public Lcom/flurry/android/monolithic/sdk/impl/aaj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/flurry/android/monolithic/sdk/impl/aak;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/aau;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a(I)I

    move-result v0

    .line 22
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaj;->b:I

    .line 23
    const/4 v1, 0x1

    sub-int v2, v0, v1

    .line 24
    new-array v3, v0, [Lcom/flurry/android/monolithic/sdk/impl/aak;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    .line 27
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->hashCode()I

    move-result v5

    and-int/2addr v5, v2

    .line 28
    new-instance v6, Lcom/flurry/android/monolithic/sdk/impl/aak;

    aget-object v7, v3, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-direct {v6, v7, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aak;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aak;Lcom/flurry/android/monolithic/sdk/impl/aau;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    aput-object v6, v3, v5

    goto :goto_0

    .line 30
    :cond_0
    iput-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a:[Lcom/flurry/android/monolithic/sdk/impl/aak;

    .line 31
    return-void
.end method

.method private static final a(I)I
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    add-int v0, p0, p0

    .line 37
    :goto_0
    const/16 v1, 0x8

    .line 38
    :goto_1
    if-ge v1, v0, :cond_1

    .line 39
    add-int/2addr v1, v1

    goto :goto_1

    .line 36
    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/aau;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aau;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a:[Lcom/flurry/android/monolithic/sdk/impl/aak;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a:[Lcom/flurry/android/monolithic/sdk/impl/aak;

    aget-object v0, v1, v0

    .line 60
    if-nez v0, :cond_0

    move-object v0, v3

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aak;->a:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aak;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aak;->c:Lcom/flurry/android/monolithic/sdk/impl/aak;

    if-eqz v0, :cond_2

    .line 67
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aak;->a:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aak;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 71
    goto :goto_0
.end method
