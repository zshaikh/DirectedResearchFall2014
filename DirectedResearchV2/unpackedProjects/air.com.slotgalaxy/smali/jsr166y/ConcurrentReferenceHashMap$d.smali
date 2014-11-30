.class abstract Ljsr166y/ConcurrentReferenceHashMap$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation


# instance fields
.field b:I

.field c:I

.field d:[Ljsr166y/ConcurrentReferenceHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljsr166y/ConcurrentReferenceHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Ljsr166y/ConcurrentReferenceHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic h:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 2

    .prologue
    .line 1436
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->h:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    iget-object v0, p1, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->b:I

    .line 1438
    const/4 v0, -0x1

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->c:I

    .line 1439
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->b()V

    .line 1440
    return-void
.end method


# virtual methods
.method final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1445
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-eqz v0, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->c:I

    if-ltz v0, :cond_2

    .line 1449
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->c:I

    sub-int v2, v1, v3

    iput v2, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1453
    :cond_2
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->b:I

    if-ltz v0, :cond_0

    .line 1454
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->h:Ljsr166y/ConcurrentReferenceHashMap;

    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->b:I

    sub-int v2, v1, v3

    iput v2, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->b:I

    aget-object v0, v0, v1

    .line 1455
    iget v1, v0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v1, :cond_2

    .line 1456
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 1457
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_2

    .line 1458
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    aget-object v1, v1, v0

    iput-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-eqz v1, :cond_3

    .line 1459
    sub-int/2addr v0, v3

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->c:I

    goto :goto_0

    .line 1457
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method c()Ljsr166y/ConcurrentReferenceHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1479
    :cond_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-nez v0, :cond_1

    .line 1480
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1482
    :cond_1
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->f:Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 1483
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->f:Ljsr166y/ConcurrentReferenceHashMap$c;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->g:Ljava/lang/Object;

    .line 1484
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->b()V

    .line 1485
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->f:Ljsr166y/ConcurrentReferenceHashMap$c;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1468
    :goto_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->e:Ljsr166y/ConcurrentReferenceHashMap$c;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    const/4 v0, 0x1

    .line 1474
    :goto_1
    return v0

    .line 1471
    :cond_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->b()V

    goto :goto_0

    .line 1474
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->f:Ljsr166y/ConcurrentReferenceHashMap$c;

    if-nez v0, :cond_0

    .line 1492
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1493
    :cond_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->h:Ljsr166y/ConcurrentReferenceHashMap;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$d;->f:Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 1495
    return-void
.end method
