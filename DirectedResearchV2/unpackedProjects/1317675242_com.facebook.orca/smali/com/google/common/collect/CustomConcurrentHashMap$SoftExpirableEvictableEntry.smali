.class Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;
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
        "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry",
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

.field d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
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

.field e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
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
    .line 1274
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1279
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->a:J

    .line 1289
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1300
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1313
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1324
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1275
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->a:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 1293
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1304
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0

    .prologue
    .line 1286
    iput-wide p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->a:J

    .line 1287
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1322
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
    .line 1297
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1298
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1333
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
    .line 1308
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1309
    return-void
.end method
