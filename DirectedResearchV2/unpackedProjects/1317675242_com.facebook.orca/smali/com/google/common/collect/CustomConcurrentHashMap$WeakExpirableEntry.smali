.class Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1451
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->a:J

    .line 1461
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1472
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1447
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1454
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->a:J

    return-wide v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0

    .prologue
    .line 1458
    iput-wide p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->a:J

    .line 1459
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1470
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1481
    return-void
.end method
