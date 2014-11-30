.class public Lorg/codehaus/jackson/node/ObjectNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.source "ObjectNode.java"


# instance fields
.field protected a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    .line 19
    return-void
.end method

.method private final b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    return-object p0
.end method


# virtual methods
.method public a(I)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    move-object v0, p0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 270
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->A()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    .line 273
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public a(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->a(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->b(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->a(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    if-nez p2, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->d(Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->e(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->b(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 72
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->A()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->A()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->b(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 448
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 556
    :goto_0
    return v0

    .line 536
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 537
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 538
    goto :goto_0

    .line 540
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/ObjectNode;

    .line 541
    invoke-virtual {p1}, Lorg/codehaus/jackson/node/ObjectNode;->w()I

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->w()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 542
    goto :goto_0

    .line 544
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_6

    .line 545
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 546
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 549
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    move v0, v2

    .line 552
    goto :goto_0

    :cond_6
    move v0, v3

    .line 556
    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->w()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 572
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 573
    if-lez v0, :cond_0

    .line 574
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 577
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 578
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_0

    .line 582
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public x()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->a()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public y()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->a()Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->a:Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
