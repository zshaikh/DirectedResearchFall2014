.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .locals 1

    .prologue
    .line 3091
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->b:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3094
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3189
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3176
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3180
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3181
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3183
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3195
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3196
    const/4 v0, 0x0

    .line 3200
    :goto_0
    return-object v0

    .line 3199
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3240
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3241
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3242
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    move-object v0, v1

    .line 3244
    goto :goto_0

    .line 3246
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3247
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3248
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3218
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3219
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3252
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3091
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3206
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3207
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3208
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3209
    invoke-static {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3210
    invoke-static {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3212
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 3229
    const/4 v0, 0x0

    .line 3230
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3232
    add-int/lit8 v1, v1, 0x1

    .line 3231
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3234
    :cond_0
    return v1
.end method
