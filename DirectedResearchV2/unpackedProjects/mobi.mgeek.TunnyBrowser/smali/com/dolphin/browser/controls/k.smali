.class final Lcom/dolphin/browser/controls/k;
.super Ljava/lang/Object;
.source "GridLayout.java"


# static fields
.field static final synthetic r:Z


# instance fields
.field public final a:Z

.field public b:I

.field c:Lcom/dolphin/browser/controls/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/q;",
            "Lcom/dolphin/browser/controls/m;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field e:Lcom/dolphin/browser/controls/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field g:Lcom/dolphin/browser/controls/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:[I

.field public j:Z

.field public k:[I

.field public l:Z

.field public m:[Lcom/dolphin/browser/controls/i;

.field public n:Z

.field public o:[I

.field public p:Z

.field q:Z

.field final synthetic s:Lcom/dolphin/browser/controls/GridLayout;

.field private t:I

.field private u:Lcom/dolphin/browser/controls/o;

.field private v:Lcom/dolphin/browser/controls/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1116
    const-class v0, Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/controls/k;->r:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/dolphin/browser/controls/GridLayout;Z)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1152
    iput-object p1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput v0, p0, Lcom/dolphin/browser/controls/k;->b:I

    .line 1124
    iput v0, p0, Lcom/dolphin/browser/controls/k;->t:I

    .line 1127
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->d:Z

    .line 1130
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->f:Z

    .line 1133
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->h:Z

    .line 1136
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->j:Z

    .line 1139
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->l:Z

    .line 1142
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->n:Z

    .line 1145
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->p:Z

    .line 1147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->q:Z

    .line 1149
    new-instance v0, Lcom/dolphin/browser/controls/o;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/controls/o;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->u:Lcom/dolphin/browser/controls/o;

    .line 1150
    new-instance v0, Lcom/dolphin/browser/controls/o;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/controls/o;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->v:Lcom/dolphin/browser/controls/o;

    .line 1153
    iput-boolean p2, p0, Lcom/dolphin/browser/controls/k;->a:Z

    .line 1154
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/controls/GridLayout;ZLcom/dolphin/browser/controls/a;)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/k;-><init>(Lcom/dolphin/browser/controls/GridLayout;Z)V

    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->u:Lcom/dolphin/browser/controls/o;

    iput p1, v0, Lcom/dolphin/browser/controls/o;->a:I

    .line 1637
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->v:Lcom/dolphin/browser/controls/o;

    neg-int v1, p2

    iput v1, v0, Lcom/dolphin/browser/controls/o;->a:I

    .line 1638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->p:Z

    .line 1639
    return-void
.end method

.method private a(Lcom/dolphin/browser/controls/p;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1242
    iget-object v0, p1, Lcom/dolphin/browser/controls/p;->c:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/o;

    move v1, v2

    .line 1243
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1244
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/dolphin/browser/controls/o;->a()V

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->b()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/controls/p;->c:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/m;

    .line 1249
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 1250
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/controls/m;->a(Z)I

    move-result v3

    .line 1251
    invoke-virtual {p1, v2}, Lcom/dolphin/browser/controls/p;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/controls/o;

    .line 1253
    iget v4, v1, Lcom/dolphin/browser/controls/o;->a:I

    if-eqz p2, :cond_1

    :goto_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lcom/dolphin/browser/controls/o;->a:I

    .line 1249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1253
    :cond_1
    neg-int v3, v3

    goto :goto_2

    .line 1255
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;[Lcom/dolphin/browser/controls/i;[Z)V
    .locals 5

    .prologue
    .line 1467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 1470
    aget-object v3, p2, v0

    .line 1471
    aget-boolean v4, p3, v0

    if-eqz v4, :cond_0

    .line 1472
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_0
    iget-boolean v4, v3, Lcom/dolphin/browser/controls/i;->c:Z

    if-nez v4, :cond_1

    .line 1475
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    :cond_2
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " constraints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/dolphin/browser/controls/k;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " are inconsistent; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "permanently removing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/dolphin/browser/controls/k;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return-void
.end method

.method private a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/controls/i;",
            ">;",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1304
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;Z)V

    .line 1305
    return-void
.end method

.method private a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/controls/i;",
            ">;",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1287
    invoke-virtual {p2}, Lcom/dolphin/browser/controls/n;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1292
    :cond_0
    if-eqz p4, :cond_2

    .line 1293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/controls/i;

    .line 1294
    iget-object v0, v0, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    .line 1295
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/controls/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1300
    :cond_2
    new-instance v0, Lcom/dolphin/browser/controls/i;

    invoke-direct {v0, p2, p3}, Lcom/dolphin/browser/controls/i;-><init>(Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/dolphin/browser/controls/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/controls/i;",
            ">;",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1372
    move v1, v2

    :goto_0
    iget-object v0, p2, Lcom/dolphin/browser/controls/p;->b:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/n;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1373
    iget-object v0, p2, Lcom/dolphin/browser/controls/p;->b:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/n;

    aget-object v3, v0, v1

    .line 1374
    iget-object v0, p2, Lcom/dolphin/browser/controls/p;->c:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/o;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;Z)V

    .line 1372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1376
    :cond_0
    return-void
.end method

.method private a([I)V
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1443
    return-void
.end method

.method private a([Lcom/dolphin/browser/controls/i;[I)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1517
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    .line 1518
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 1519
    const/4 v1, 0x0

    move v5, v4

    .line 1521
    :goto_1
    array-length v2, p1

    if-ge v5, v2, :cond_2

    .line 1522
    invoke-direct {p0, p2}, Lcom/dolphin/browser/controls/k;->a([I)V

    move v6, v4

    .line 1525
    :goto_2
    if-ge v6, v7, :cond_4

    .line 1527
    array-length v8, p1

    move v2, v4

    move v3, v4

    :goto_3
    if-ge v2, v8, :cond_1

    .line 1528
    aget-object v9, p1, v2

    invoke-direct {p0, p2, v9}, Lcom/dolphin/browser/controls/k;->a([ILcom/dolphin/browser/controls/i;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 1527
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1517
    :cond_0
    const-string v0, "vertical"

    goto :goto_0

    .line 1530
    :cond_1
    if-nez v3, :cond_3

    .line 1531
    if-eqz v1, :cond_2

    .line 1532
    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/controls/k;->a(Ljava/lang/String;[Lcom/dolphin/browser/controls/i;[Z)V

    .line 1561
    :cond_2
    return-void

    .line 1525
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 1538
    :cond_4
    array-length v2, p1

    new-array v2, v2, [Z

    move v6, v4

    .line 1539
    :goto_4
    if-ge v6, v7, :cond_6

    .line 1540
    array-length v8, p1

    move v3, v4

    :goto_5
    if-ge v3, v8, :cond_5

    .line 1541
    aget-boolean v9, v2, v3

    aget-object v10, p1, v3

    invoke-direct {p0, p2, v10}, Lcom/dolphin/browser/controls/k;->a([ILcom/dolphin/browser/controls/i;)Z

    move-result v10

    or-int/2addr v9, v10

    aput-boolean v9, v2, v3

    .line 1540
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1539
    :cond_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    .line 1545
    :cond_6
    if-nez v5, :cond_7

    move-object v1, v2

    :cond_7
    move v3, v4

    .line 1549
    :goto_6
    array-length v6, p1

    if-ge v3, v6, :cond_a

    .line 1550
    aget-boolean v6, v2, v3

    if-eqz v6, :cond_8

    .line 1551
    aget-object v6, p1, v3

    .line 1553
    iget-object v8, v6, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v8, v8, Lcom/dolphin/browser/controls/n;->a:I

    iget-object v9, v6, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v9, v9, Lcom/dolphin/browser/controls/n;->b:I

    if-ge v8, v9, :cond_9

    .line 1549
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1556
    :cond_9
    iput-boolean v4, v6, Lcom/dolphin/browser/controls/i;->c:Z

    .line 1521
    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1
.end method

.method private a([ILcom/dolphin/browser/controls/i;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1426
    iget-boolean v1, p2, Lcom/dolphin/browser/controls/i;->c:Z

    if-nez v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1429
    :cond_1
    iget-object v1, p2, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    .line 1430
    iget v2, v1, Lcom/dolphin/browser/controls/n;->a:I

    .line 1431
    iget v1, v1, Lcom/dolphin/browser/controls/n;->b:I

    .line 1432
    iget-object v3, p2, Lcom/dolphin/browser/controls/i;->b:Lcom/dolphin/browser/controls/o;

    iget v3, v3, Lcom/dolphin/browser/controls/o;->a:I

    .line 1433
    aget v2, p1, v2

    add-int/2addr v2, v3

    .line 1434
    aget v3, p1, v1

    if-le v2, v3, :cond_0

    .line 1435
    aput v2, p1, v1

    .line 1436
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)[Lcom/dolphin/browser/controls/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/controls/i;",
            ">;)[",
            "Lcom/dolphin/browser/controls/i;"
        }
    .end annotation

    .prologue
    .line 1368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/controls/i;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/controls/i;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/controls/k;->b([Lcom/dolphin/browser/controls/i;)[Lcom/dolphin/browser/controls/i;

    move-result-object v0

    return-object v0
.end method

.method private b(II)I
    .locals 1

    .prologue
    .line 1642
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/k;->a(II)V

    .line 1643
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->f()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/controls/k;->c([I)I

    move-result v0

    return v0
.end method

.method private b(Z)Lcom/dolphin/browser/controls/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    const-class v0, Lcom/dolphin/browser/controls/n;

    const-class v1, Lcom/dolphin/browser/controls/o;

    invoke-static {v0, v1}, Lcom/dolphin/browser/controls/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/dolphin/browser/controls/j;

    move-result-object v3

    .line 1233
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->b()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/controls/p;->b:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/q;

    .line 1234
    const/4 v1, 0x0

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1235
    if-eqz p1, :cond_0

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 1236
    :goto_1
    new-instance v5, Lcom/dolphin/browser/controls/o;

    invoke-direct {v5}, Lcom/dolphin/browser/controls/o;-><init>()V

    invoke-virtual {v3, v1, v5}, Lcom/dolphin/browser/controls/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1234
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1235
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    invoke-virtual {v1}, Lcom/dolphin/browser/controls/n;->b()Lcom/dolphin/browser/controls/n;

    move-result-object v1

    goto :goto_1

    .line 1238
    :cond_1
    invoke-virtual {v3}, Lcom/dolphin/browser/controls/j;->a()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/controls/i;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    move-object v1, v0

    .line 1447
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    const/4 v0, 0x1

    .line 1449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/controls/i;

    .line 1450
    if-eqz v2, :cond_1

    .line 1451
    const/4 v2, 0x0

    .line 1455
    :goto_2
    iget-object v5, v0, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v5, v5, Lcom/dolphin/browser/controls/n;->a:I

    .line 1456
    iget-object v6, v0, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v6, v6, Lcom/dolphin/browser/controls/n;->b:I

    .line 1457
    iget-object v0, v0, Lcom/dolphin/browser/controls/i;->b:Lcom/dolphin/browser/controls/o;

    iget v0, v0, Lcom/dolphin/browser/controls/o;->a:I

    .line 1458
    if-ge v5, v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1446
    :cond_0
    const-string v0, "y"

    move-object v1, v0

    goto :goto_0

    .line 1453
    :cond_1
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    .line 1458
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1463
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b([I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1601
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->c()[Lcom/dolphin/browser/controls/i;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/controls/k;->a([Lcom/dolphin/browser/controls/i;[I)V

    .line 1602
    iget-boolean v1, p0, Lcom/dolphin/browser/controls/k;->q:Z

    if-nez v1, :cond_0

    .line 1609
    aget v1, p1, v0

    .line 1610
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1611
    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    :cond_0
    return-void
.end method

.method private b([Lcom/dolphin/browser/controls/i;)[Lcom/dolphin/browser/controls/i;
    .locals 1

    .prologue
    .line 1330
    new-instance v0, Lcom/dolphin/browser/controls/l;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/controls/l;-><init>(Lcom/dolphin/browser/controls/k;[Lcom/dolphin/browser/controls/i;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/l;->a()[Lcom/dolphin/browser/controls/i;

    move-result-object v0

    return-object v0
.end method

.method private c([I)I
    .locals 1

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private c(Z)V
    .locals 8

    .prologue
    .line 1564
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->i:[I

    .line 1565
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v2}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    .line 1566
    iget-object v1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1567
    iget-object v1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->k:[I

    goto :goto_0

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v1

    .line 1569
    iget-boolean v5, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v5, :cond_2

    iget-object v1, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1570
    :goto_3
    iget-object v1, v1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 1571
    if-eqz p1, :cond_3

    iget v1, v1, Lcom/dolphin/browser/controls/n;->a:I

    .line 1572
    :goto_4
    aget v5, v0, v1

    iget-object v6, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    iget-boolean v7, p0, Lcom/dolphin/browser/controls/k;->a:Z

    invoke-virtual {v6, v4, v7, p1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v1

    goto :goto_2

    .line 1569
    :cond_2
    iget-object v1, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_3

    .line 1571
    :cond_3
    iget v1, v1, Lcom/dolphin/browser/controls/n;->b:I

    goto :goto_4

    .line 1574
    :cond_4
    return-void
.end method

.method private i()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 1158
    .line 1159
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v4

    move v2, v0

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    iget-object v5, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v5, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    .line 1162
    iget-boolean v5, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1163
    :goto_1
    iget-object v0, v0, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 1164
    iget v5, v0, Lcom/dolphin/browser/controls/n;->a:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1165
    iget v0, v0, Lcom/dolphin/browser/controls/n;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1159
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_1

    .line 1167
    :cond_1
    if-ne v1, v3, :cond_2

    const/high16 v0, -0x80000000

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private j()I
    .locals 2

    .prologue
    .line 1171
    iget v0, p0, Lcom/dolphin/browser/controls/k;->t:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1172
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/k;->t:I

    .line 1174
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/controls/k;->t:I

    return v0
.end method

.method private k()Lcom/dolphin/browser/controls/p;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/q;",
            "Lcom/dolphin/browser/controls/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    const-class v0, Lcom/dolphin/browser/controls/q;

    const-class v1, Lcom/dolphin/browser/controls/m;

    invoke-static {v0, v1}, Lcom/dolphin/browser/controls/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/dolphin/browser/controls/j;

    move-result-object v2

    .line 1196
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1198
    iget-object v4, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    .line 1199
    iget-boolean v4, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1200
    :goto_1
    iget-object v4, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    iget-object v5, v0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    iget-boolean v6, p0, Lcom/dolphin/browser/controls/k;->a:Z

    invoke-virtual {v4, v5, v6}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/h;Z)Lcom/dolphin/browser/controls/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/controls/h;->a()Lcom/dolphin/browser/controls/m;

    move-result-object v4

    .line 1201
    invoke-virtual {v2, v0, v4}, Lcom/dolphin/browser/controls/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_1

    .line 1203
    :cond_1
    invoke-virtual {v2}, Lcom/dolphin/browser/controls/j;->a()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1207
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    iget-object v0, v0, Lcom/dolphin/browser/controls/p;->c:[Ljava/lang/Object;

    check-cast v0, [Lcom/dolphin/browser/controls/m;

    move v1, v2

    .line 1208
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1209
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/dolphin/browser/controls/m;->a()V

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1213
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    .line 1214
    iget-boolean v1, p0, Lcom/dolphin/browser/controls/k;->a:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    move-object v1, v0

    .line 1215
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/controls/p;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/controls/m;

    iget-object v5, p0, Lcom/dolphin/browser/controls/k;->s:Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0, v4, v1, v5, p0}, Lcom/dolphin/browser/controls/m;->a(Landroid/view/View;Lcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/GridLayout;Lcom/dolphin/browser/controls/k;)V

    .line 1211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1214
    :cond_1
    iget-object v0, v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    move-object v1, v0

    goto :goto_2

    .line 1217
    :cond_2
    return-void
.end method

.method private m()Lcom/dolphin/browser/controls/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1258
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->e:Lcom/dolphin/browser/controls/p;

    if-nez v0, :cond_0

    .line 1259
    invoke-direct {p0, v1}, Lcom/dolphin/browser/controls/k;->b(Z)Lcom/dolphin/browser/controls/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->e:Lcom/dolphin/browser/controls/p;

    .line 1261
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->f:Z

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->e:Lcom/dolphin/browser/controls/p;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/controls/k;->a(Lcom/dolphin/browser/controls/p;Z)V

    .line 1263
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->f:Z

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->e:Lcom/dolphin/browser/controls/p;

    return-object v0
.end method

.method private n()Lcom/dolphin/browser/controls/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/n;",
            "Lcom/dolphin/browser/controls/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1269
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->g:Lcom/dolphin/browser/controls/p;

    if-nez v0, :cond_0

    .line 1270
    invoke-direct {p0, v1}, Lcom/dolphin/browser/controls/k;->b(Z)Lcom/dolphin/browser/controls/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->g:Lcom/dolphin/browser/controls/p;

    .line 1272
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->h:Z

    if-nez v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->g:Lcom/dolphin/browser/controls/p;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/controls/k;->a(Lcom/dolphin/browser/controls/p;Z)V

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->h:Z

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->g:Lcom/dolphin/browser/controls/p;

    return-object v0
.end method

.method private o()[Lcom/dolphin/browser/controls/i;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1379
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->m()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/p;)V

    .line 1385
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->n()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/p;)V

    .line 1388
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->q:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1390
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1391
    new-instance v4, Lcom/dolphin/browser/controls/n;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v0, v5}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    new-instance v5, Lcom/dolphin/browser/controls/o;

    invoke-direct {v5, v1}, Lcom/dolphin/browser/controls/o;-><init>(I)V

    invoke-direct {p0, v2, v4, v5}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;)V

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    .line 1398
    new-instance v4, Lcom/dolphin/browser/controls/n;

    invoke-direct {v4, v1, v0}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    iget-object v5, p0, Lcom/dolphin/browser/controls/k;->u:Lcom/dolphin/browser/controls/o;

    invoke-direct {p0, v2, v4, v5, v1}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;Z)V

    .line 1399
    new-instance v4, Lcom/dolphin/browser/controls/n;

    invoke-direct {v4, v0, v1}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->v:Lcom/dolphin/browser/controls/o;

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;Z)V

    .line 1402
    invoke-direct {p0, v2}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;)[Lcom/dolphin/browser/controls/i;

    move-result-object v0

    .line 1403
    invoke-direct {p0, v3}, Lcom/dolphin/browser/controls/k;->a(Ljava/util/List;)[Lcom/dolphin/browser/controls/i;

    move-result-object v1

    .line 1405
    invoke-static {v0, v1}, Lcom/dolphin/browser/controls/GridLayout;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/controls/i;

    return-object v0
.end method

.method private p()V
    .locals 0

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->m()Lcom/dolphin/browser/controls/p;

    .line 1411
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->n()Lcom/dolphin/browser/controls/p;

    .line 1412
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1178
    iget v0, p0, Lcom/dolphin/browser/controls/k;->b:I

    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->j()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1182
    iput p1, p0, Lcom/dolphin/browser/controls/k;->b:I

    .line 1183
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1190
    iput-boolean p1, p0, Lcom/dolphin/browser/controls/k;->q:Z

    .line 1191
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->g()V

    .line 1192
    return-void
.end method

.method a([Lcom/dolphin/browser/controls/i;)[[Lcom/dolphin/browser/controls/i;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1310
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1311
    new-array v2, v0, [[Lcom/dolphin/browser/controls/i;

    .line 1312
    new-array v3, v0, [I

    .line 1313
    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 1314
    iget-object v5, v5, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v5, v5, Lcom/dolphin/browser/controls/n;->a:I

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1316
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1317
    aget v4, v3, v0

    new-array v4, v4, [Lcom/dolphin/browser/controls/i;

    aput-object v4, v2, v0

    .line 1316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1320
    :cond_1
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1321
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 1322
    iget-object v5, v4, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v5, v5, Lcom/dolphin/browser/controls/n;->a:I

    .line 1323
    aget-object v6, v2, v5

    aget v7, v3, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v5

    aput-object v4, v6, v7

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1326
    :cond_2
    return-object v2
.end method

.method public b(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1647
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1648
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1649
    sparse-switch v1, :sswitch_data_0

    .line 1660
    sget-boolean v1, Lcom/dolphin/browser/controls/k;->r:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1651
    :sswitch_0
    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/controls/k;->b(II)I

    move-result v0

    .line 1661
    :cond_0
    :goto_0
    return v0

    .line 1654
    :sswitch_1
    invoke-direct {p0, v2, v2}, Lcom/dolphin/browser/controls/k;->b(II)I

    move-result v0

    goto :goto_0

    .line 1657
    :sswitch_2
    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/controls/k;->b(II)I

    move-result v0

    goto :goto_0

    .line 1649
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()Lcom/dolphin/browser/controls/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/controls/p",
            "<",
            "Lcom/dolphin/browser/controls/q;",
            "Lcom/dolphin/browser/controls/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    if-nez v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->k()Lcom/dolphin/browser/controls/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    .line 1223
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->d:Z

    if-nez v0, :cond_1

    .line 1224
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->l()V

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->d:Z

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 1667
    invoke-direct {p0, p1, p1}, Lcom/dolphin/browser/controls/k;->a(II)V

    .line 1668
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->f()[I

    .line 1669
    return-void
.end method

.method public c()[Lcom/dolphin/browser/controls/i;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->m:[Lcom/dolphin/browser/controls/i;

    if-nez v0, :cond_0

    .line 1416
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->o()[Lcom/dolphin/browser/controls/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->m:[Lcom/dolphin/browser/controls/i;

    .line 1418
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->n:Z

    if-nez v0, :cond_1

    .line 1419
    invoke-direct {p0}, Lcom/dolphin/browser/controls/k;->p()V

    .line 1420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->n:Z

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->m:[Lcom/dolphin/browser/controls/i;

    return-object v0
.end method

.method public d()[I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1579
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->i:[I

    if-nez v0, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->i:[I

    .line 1582
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->j:Z

    if-nez v0, :cond_1

    .line 1583
    invoke-direct {p0, v1}, Lcom/dolphin/browser/controls/k;->c(Z)V

    .line 1584
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/k;->j:Z

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->i:[I

    return-object v0
.end method

.method public e()[I
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->k:[I

    if-nez v0, :cond_0

    .line 1591
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->k:[I

    .line 1593
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->l:Z

    if-nez v0, :cond_1

    .line 1594
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/controls/k;->c(Z)V

    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->l:Z

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->k:[I

    return-object v0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->o:[I

    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1619
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/controls/k;->o:[I

    .line 1621
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/k;->p:Z

    if-nez v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->o:[I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/controls/k;->b([I)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->p:Z

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/k;->o:[I

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1672
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/controls/k;->t:I

    .line 1674
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->c:Lcom/dolphin/browser/controls/p;

    .line 1675
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->e:Lcom/dolphin/browser/controls/p;

    .line 1676
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->g:Lcom/dolphin/browser/controls/p;

    .line 1678
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->i:[I

    .line 1679
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->k:[I

    .line 1680
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->m:[Lcom/dolphin/browser/controls/i;

    .line 1682
    iput-object v1, p0, Lcom/dolphin/browser/controls/k;->o:[I

    .line 1684
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/k;->h()V

    .line 1685
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1688
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->d:Z

    .line 1689
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->f:Z

    .line 1690
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->h:Z

    .line 1692
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->j:Z

    .line 1693
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->l:Z

    .line 1694
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->n:Z

    .line 1696
    iput-boolean v0, p0, Lcom/dolphin/browser/controls/k;->p:Z

    .line 1697
    return-void
.end method
