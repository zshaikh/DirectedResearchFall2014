.class Ljsr166y/ConcurrentReferenceHashMap$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

    .line 1526
    iput-object p2, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    .line 1527
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1566
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$i;, "Ljsr166y/ConcurrentReferenceHashMap$i<TK;TV;>;"
    const/4 v2, 0x0

    .line 1549
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v2

    .line 1553
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1552
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1553
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

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
    .line 1535
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

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
    .line 1539
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1557
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$i;, "Ljsr166y/ConcurrentReferenceHashMap$i<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    .line 1544
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    .line 1545
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$i;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
