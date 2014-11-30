.class final Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3555
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 3556
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    .line 3557
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    .line 3558
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 3570
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 3571
    check-cast p1, Ljava/util/Map$Entry;

    .line 3572
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3575
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3572
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3575
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3585
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    .line 3586
    return-object v0
.end method
