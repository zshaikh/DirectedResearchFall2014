.class final Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 479
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 482
    iput-object p0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 483
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;TK;I",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p5, prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 488
    iput-object p2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 489
    iput p3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 491
    iput-object p4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 492
    iput-object p5, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 493
    iput-object p0, p5, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 494
    iput-object p0, p4, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 495
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 513
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_4

    .line 514
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 515
    .local v1, other:Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    const/4 v2, 0x1

    .line 518
    .end local v1           #other:Ljava/util/Map$Entry;
    :goto_1
    return v2

    .line 515
    .restart local v1       #other:Ljava/util/Map$Entry;
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .end local v1           #other:Ljava/util/Map$Entry;
    :cond_4
    move v2, v4

    .line 518
    goto :goto_1
.end method

.method public first()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 535
    .local v1, node:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 536
    .local v0, child:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 537
    move-object v1, v0

    .line 538
    iget-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 540
    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

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
    .line 502
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public last()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 548
    .local v1, node:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 549
    .local v0, child:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 550
    move-object v1, v0

    .line 551
    iget-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 553
    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 507
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 508
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method