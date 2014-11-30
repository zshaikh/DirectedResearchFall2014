.class public Lcom/acmeaom/android/c/d/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/a/g/c;

.field private static final b:Lcom/acmeaom/android/c/i/b;

.field private static final c:Lcom/acmeaom/android/c/i/b;

.field private static final d:Lcom/acmeaom/android/c/i/b;

.field private static final e:Ljava/lang/ThreadLocal;

.field private static f:Ljava/lang/ThreadLocal;

.field private static g:Lcom/acmeaom/android/c/i/b;

.field private static h:Lcom/acmeaom/android/c/i/b;

.field private static i:Lcom/acmeaom/android/c/i/b;

.field private static final j:Lcom/acmeaom/android/c/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/acmeaom/android/a/g/c;-><init>(FFFF)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->a:Lcom/acmeaom/android/a/g/c;

    .line 426
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->b:Lcom/acmeaom/android/c/i/b;

    .line 428
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/o;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->c:Lcom/acmeaom/android/c/i/b;

    .line 563
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->d:Lcom/acmeaom/android/c/i/b;

    .line 678
    new-instance v0, Lcom/acmeaom/android/c/d/b;

    invoke-direct {v0}, Lcom/acmeaom/android/c/d/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->e:Ljava/lang/ThreadLocal;

    .line 733
    new-instance v0, Lcom/acmeaom/android/c/d/c;

    invoke-direct {v0}, Lcom/acmeaom/android/c/d/c;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->f:Ljava/lang/ThreadLocal;

    .line 742
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, [Z

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->g:Lcom/acmeaom/android/c/i/b;

    .line 744
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, [Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->h:Lcom/acmeaom/android/c/i/b;

    .line 746
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, [F

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->i:Lcom/acmeaom/android/c/i/b;

    .line 787
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/d;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/a;->j:Lcom/acmeaom/android/c/i/b;

    return-void
.end method

.method public static a(F)F
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static a(FF)F
    .locals 4

    .prologue
    .line 33
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;)F
    .locals 1

    .prologue
    .line 1008
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->b(F)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)F
    .locals 3

    .prologue
    .line 713
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/g/c;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/n;)F
    .locals 3

    .prologue
    .line 497
    iget v0, p0, Lcom/acmeaom/android/a/g/n;->b:F

    iget v1, p0, Lcom/acmeaom/android/a/g/n;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/n;->c:F

    iget v2, p0, Lcom/acmeaom/android/a/g/n;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/n;->d:F

    iget v2, p0, Lcom/acmeaom/android/a/g/n;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, -0x41000000

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(FF)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/n;Lcom/acmeaom/android/a/g/n;)F
    .locals 3

    .prologue
    .line 489
    iget v0, p0, Lcom/acmeaom/android/a/g/n;->b:F

    iget v1, p1, Lcom/acmeaom/android/a/g/n;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/n;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/g/n;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/n;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/g/n;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/o;)F
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    sget-object v0, Lcom/acmeaom/android/c/d/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/g/m;

    .line 689
    invoke-virtual {p0, v5}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    .line 690
    invoke-virtual {p0, v6}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    .line 692
    aget-object v1, v0, v5

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v1, v1

    aget-object v3, v0, v6

    iget v3, v3, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    aget-object v3, v0, v5

    iget v3, v3, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v3, v3

    aget-object v0, v0, v6

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v5, v0

    mul-double/2addr v3, v5

    sub-double v0, v1, v3

    double-to-float v0, v0

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/l;)Lcom/acmeaom/android/a/g/c;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    .line 531
    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 532
    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 533
    const/4 v1, 0x0

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 534
    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 535
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    .line 232
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 234
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 236
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 238
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 241
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/m;)Lcom/acmeaom/android/a/g/d;
    .locals 1

    .prologue
    .line 585
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/a/c/m;)Lcom/acmeaom/android/a/g/p;

    move-result-object v0

    .line 586
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;)Lcom/acmeaom/android/a/g/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/d;
    .locals 1

    .prologue
    .line 416
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/m;)Lcom/acmeaom/android/a/g/d;

    move-result-object v0

    .line 417
    invoke-static {v0, p1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/d;FFF)Lcom/acmeaom/android/a/g/d;
    .locals 6

    .prologue
    .line 798
    new-instance v1, Lcom/acmeaom/android/a/g/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/a/g/d;-><init>(Lcom/acmeaom/android/a/g/d;)V

    .line 800
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 801
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v2

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->d:F

    .line 802
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v3

    iget v4, v3, Lcom/acmeaom/android/a/g/c;->a:F

    mul-float v5, p1, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/acmeaom/android/a/g/c;->a:F

    .line 803
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v3

    iget v4, v3, Lcom/acmeaom/android/a/g/c;->b:F

    mul-float v5, p2, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/acmeaom/android/a/g/c;->b:F

    .line 804
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v3

    iget v4, v3, Lcom/acmeaom/android/a/g/c;->c:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v4

    iput v2, v3, Lcom/acmeaom/android/a/g/c;->c:F

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/d;
    .locals 4

    .prologue
    .line 379
    new-instance v1, Lcom/acmeaom/android/a/g/d;

    invoke-direct {v1}, Lcom/acmeaom/android/a/g/d;-><init>()V

    .line 381
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 382
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/a/g/c;->a(Lcom/acmeaom/android/a/g/c;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/acmeaom/android/a/g/p;)Lcom/acmeaom/android/a/g/d;
    .locals 1

    .prologue
    .line 558
    new-instance v0, Lcom/acmeaom/android/a/g/d;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/d;-><init>()V

    .line 559
    invoke-static {p0, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/d;)V

    .line 560
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 816
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 817
    invoke-static {v0, p1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/c;)Lcom/acmeaom/android/a/g/m;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7fc00000

    const/high16 v8, 0x7f800000

    const/high16 v7, -0x800000

    const-wide/16 v5, 0x0

    .line 271
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 274
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    .line 275
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 276
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->b:F

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 296
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1

    .line 279
    iput v8, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 287
    :goto_1
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_3

    .line 288
    iput v8, v0, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0

    .line 280
    :cond_1
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_2

    .line 281
    iput v7, v0, Lcom/acmeaom/android/a/g/m;->d:F

    goto :goto_1

    .line 283
    :cond_2
    const-string v1, "point._x == %f, point.w == %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/acmeaom/android/a/g/c;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    iget v4, p0, Lcom/acmeaom/android/a/g/c;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iput v9, v0, Lcom/acmeaom/android/a/g/m;->d:F

    goto :goto_1

    .line 289
    :cond_3
    iget v1, p0, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_4

    .line 290
    iput v7, v0, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0

    .line 292
    :cond_4
    const-string v1, "point._y == %f, point.w == %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/acmeaom/android/a/g/c;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    iget v4, p0, Lcom/acmeaom/android/a/g/c;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iput v9, v0, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 475
    invoke-static {p0, p1, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;FLcom/acmeaom/android/a/g/m;)V

    .line 476
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 192
    invoke-static {p0, p1, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    .line 193
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;
    .locals 8

    .prologue
    const/high16 v7, 0x7fc00000

    const/high16 v6, 0x7f800000

    const/high16 v5, -0x800000

    const-wide/16 v3, 0x0

    .line 199
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 200
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    .line 202
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    add-float/2addr v0, v1

    .line 205
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 206
    iget v1, p2, Lcom/acmeaom/android/a/g/m;->d:F

    div-float/2addr v1, v0

    iput v1, p2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 207
    iget v1, p2, Lcom/acmeaom/android/a/g/m;->e:F

    div-float v0, v1, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    .line 225
    :goto_0
    return-object p2

    .line 209
    :cond_0
    iget v0, p2, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    .line 210
    iput v6, p2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 217
    :goto_1
    iget v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_3

    .line 218
    iput v6, p2, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0

    .line 211
    :cond_1
    iget v0, p2, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v0, v0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_2

    .line 212
    iput v5, p2, Lcom/acmeaom/android/a/g/m;->d:F

    goto :goto_1

    .line 214
    :cond_2
    iput v7, p2, Lcom/acmeaom/android/a/g/m;->d:F

    goto :goto_1

    .line 219
    :cond_3
    iget v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v0, v0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_4

    .line 220
    iput v5, p2, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0

    .line 222
    :cond_4
    iput v7, p2, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;
    .locals 3

    .prologue
    .line 454
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 456
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 457
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 458
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;
    .locals 4

    .prologue
    .line 468
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 469
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    .line 470
    return-object p2
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/n;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/acmeaom/android/a/g/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/n;-><init>()V

    .line 522
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iput v1, v0, Lcom/acmeaom/android/a/g/n;->b:F

    .line 523
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iput v1, v0, Lcom/acmeaom/android/a/g/n;->c:F

    .line 524
    const/4 v1, 0x0

    iput v1, v0, Lcom/acmeaom/android/a/g/n;->d:F

    .line 525
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)V
    .locals 6

    .prologue
    .line 727
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v2, v2

    iget v4, p1, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/c;->a:F

    .line 728
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v2, v2

    iget v4, p1, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/c;->b:F

    .line 729
    const/4 v0, 0x0

    iput v0, p2, Lcom/acmeaom/android/a/g/c;->c:F

    .line 730
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v2, v2

    iget v4, p1, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/acmeaom/android/a/g/c;->d:F

    .line 731
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;FLcom/acmeaom/android/a/g/m;)V
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 481
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/acmeaom/android/a/g/m;->e:F

    .line 482
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/g/o;)V
    .locals 4

    .prologue
    .line 431
    sget-object v0, Lcom/acmeaom/android/c/d/a;->c:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/o;

    .line 432
    sget-object v1, Lcom/acmeaom/android/c/d/a;->b:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/g/m;

    .line 433
    invoke-static {p0, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/o;)V

    .line 434
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 435
    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    .line 436
    invoke-virtual {p2, v2}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 567
    sget-object v0, Lcom/acmeaom/android/c/d/a;->d:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/c;

    .line 569
    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->d:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 570
    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->e:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 571
    const/4 v1, 0x0

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 572
    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 574
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/c;->a(Lcom/acmeaom/android/a/g/c;)V

    .line 575
    invoke-virtual {p1, v2}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/c;->a(Lcom/acmeaom/android/a/g/c;)V

    .line 576
    invoke-virtual {p1, v2}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    iget v2, v1, Lcom/acmeaom/android/a/g/c;->a:F

    iget-object v3, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v3, v3, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/acmeaom/android/a/g/c;->a:F

    .line 577
    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/c;->a(Lcom/acmeaom/android/a/g/c;)V

    .line 578
    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    iget v2, v1, Lcom/acmeaom/android/a/g/c;->a:F

    iget-object v3, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v3, v3, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/acmeaom/android/a/g/c;->a:F

    .line 579
    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    iget v2, v1, Lcom/acmeaom/android/a/g/c;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v3, v3, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/acmeaom/android/a/g/c;->b:F

    .line 580
    invoke-virtual {p1, v5}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/g/c;->a(Lcom/acmeaom/android/a/g/c;)V

    .line 581
    invoke-virtual {p1, v5}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    iget v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 582
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/o;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 596
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/a/g/o;->a(ILcom/acmeaom/android/a/g/m;)V

    .line 597
    iget-object v0, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {p1, v2, v0}, Lcom/acmeaom/android/a/g/o;->a(ILcom/acmeaom/android/a/g/m;)V

    .line 598
    invoke-virtual {p1, v2}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 599
    iget-object v0, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {p1, v3, v0}, Lcom/acmeaom/android/a/g/o;->a(ILcom/acmeaom/android/a/g/m;)V

    .line 600
    invoke-virtual {p1, v3}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 601
    invoke-virtual {p1, v3}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 602
    iget-object v0, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {p1, v4, v0}, Lcom/acmeaom/android/a/g/o;->a(ILcom/acmeaom/android/a/g/m;)V

    .line 603
    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/o;->a(I)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 604
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/g/d;)Z
    .locals 11

    .prologue
    .line 749
    sget-object v0, Lcom/acmeaom/android/c/d/a;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/g/c;

    .line 750
    sget-object v1, Lcom/acmeaom/android/c/d/a;->g:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 751
    sget-object v2, Lcom/acmeaom/android/c/d/a;->h:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v2}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/acmeaom/android/a/g/c;

    .line 752
    sget-object v3, Lcom/acmeaom/android/c/d/a;->i:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 754
    const/4 v5, 0x0

    const/4 v4, 0x3

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    .line 755
    invoke-virtual {p0, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-static {v6, v7, v8}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)V

    .line 756
    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v4, v6, v7}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)V

    .line 758
    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v1, v4

    .line 759
    const/4 v4, 0x1

    const/4 v6, 0x1

    aput-boolean v6, v1, v4

    .line 760
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    .line 762
    const/4 v6, 0x0

    invoke-virtual {p1, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v7

    aput-object v7, v2, v6

    .line 763
    const/4 v6, 0x1

    invoke-virtual {p0, v4}, Lcom/acmeaom/android/a/g/d;->a(I)Lcom/acmeaom/android/a/g/c;

    move-result-object v7

    aput-object v7, v2, v6

    .line 764
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v7, v8}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)F

    move-result v7

    aput v7, v3, v6

    .line 765
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v7, v8}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/g/c;)F

    move-result v7

    aput v7, v3, v6

    .line 767
    const/4 v6, 0x0

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 768
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v1, v6

    .line 769
    const/4 v6, 0x1

    aget-boolean v6, v1, v6

    if-nez v6, :cond_2

    .line 780
    :cond_0
    const/4 v4, 0x0

    aget-boolean v4, v1, v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_4

    .line 781
    :cond_1
    const/4 v0, 0x0

    .line 784
    :goto_2
    return v0

    .line 773
    :cond_2
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    .line 774
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-boolean v7, v1, v6

    .line 775
    const/4 v6, 0x0

    aget-boolean v6, v1, v6

    if-eqz v6, :cond_0

    .line 760
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 754
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v10, v5

    move v5, v4

    move v4, v10

    goto/16 :goto_0

    .line 784
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/g/p;)Z
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/acmeaom/android/c/d/a;->j:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/d;

    .line 792
    invoke-static {p1, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/d;)V

    .line 793
    invoke-static {p0, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/g/d;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/m;)Z
    .locals 3

    .prologue
    .line 864
    iget v0, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->d:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v2, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->e:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(D)[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 47
    double-to-long v1, p0

    long-to-float v1, v1

    aput v1, v0, v3

    .line 48
    const/4 v1, 0x1

    aget v2, v0, v3

    float-to-double v2, v2

    sub-double v2, p0, v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 49
    return-object v0
.end method

.method public static b(D)D
    .locals 2

    .prologue
    .line 1096
    :try_start_0
    invoke-static {p0, p1}, La/a/a/a/b/a;->b(D)D
    :try_end_0
    .catch La/a/a/a/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1098
    :goto_0
    return-wide v0

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b(F)F
    .locals 2

    .prologue
    .line 37
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static b(FF)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 930
    div-float v0, p0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(D)[F

    move-result-object v1

    .line 931
    const/4 v0, 0x1

    aget v0, v1, v0

    .line 932
    const/4 v2, 0x0

    aget v1, v1, v2

    .line 933
    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 934
    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    .line 935
    add-float/2addr v0, v4

    .line 939
    :cond_0
    :goto_0
    mul-float p0, v0, p1

    .line 943
    :cond_1
    return p0

    .line 936
    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 937
    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method public static b(Lcom/acmeaom/android/a/a/a/b;)F
    .locals 3

    .prologue
    .line 1012
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000

    div-float/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 389
    new-instance v2, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/a/g/c;-><init>(Lcom/acmeaom/android/a/g/c;)V

    .line 391
    new-array v3, v5, [Lcom/acmeaom/android/a/g/c;

    move v0, v1

    .line 393
    :goto_0
    if-ge v0, v5, :cond_0

    .line 394
    int-to-float v4, v0

    iput v4, v2, Lcom/acmeaom/android/a/g/c;->c:F

    .line 395
    invoke-static {v2, p1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v4

    aput-object v4, v3, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    .line 399
    aget-object v2, v3, v1

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v4, v2

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v6, v2

    mul-double/2addr v4, v6

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->a:F

    float-to-double v6, v2

    aget-object v2, v3, v1

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v8, v2

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, v0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 400
    aget-object v2, v3, v1

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v4, v2

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v6, v2

    mul-double/2addr v4, v6

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->b:F

    float-to-double v6, v2

    aget-object v2, v3, v1

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v8, v2

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 401
    const/4 v2, 0x0

    iput v2, v0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 402
    aget-object v2, v3, v1

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v4, v2

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v6, v2

    mul-double/2addr v4, v6

    aget-object v2, v3, v10

    iget v2, v2, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v6, v2

    aget-object v1, v3, v1

    iget v1, v1, Lcom/acmeaom/android/a/g/c;->c:F

    float-to-double v1, v1

    mul-double/2addr v1, v6

    sub-double v1, v4, v1

    double-to-float v1, v1

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 404
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/c;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    .line 541
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 542
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 543
    const/4 v1, 0x0

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 544
    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 545
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/a/c/l;)Lcom/acmeaom/android/a/g/m;
    .locals 2

    .prologue
    .line 661
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 663
    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 664
    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 665
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 810
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 811
    invoke-static {v0, p1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 463
    invoke-static {p0, p1, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    .line 464
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/a/c/m;)Lcom/acmeaom/android/a/g/p;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Lcom/acmeaom/android/a/g/p;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/p;-><init>()V

    .line 613
    iget-object v1, v0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 614
    iget-object v1, v0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 615
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/g/c;)Z
    .locals 4

    .prologue
    .line 973
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->b:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->c:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(D)D
    .locals 2

    .prologue
    .line 1104
    :try_start_0
    invoke-static {p0, p1}, La/a/a/a/b/a;->a(D)D
    :try_end_0
    .catch La/a/a/a/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1106
    :goto_0
    return-wide v0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static c(FF)F
    .locals 2

    .prologue
    .line 1037
    div-float v0, p0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(D)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static c(Lcom/acmeaom/android/a/a/a/b;)F
    .locals 6

    .prologue
    const v5, 0x40490fdb

    const/high16 v4, 0x3f000000

    .line 1025
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->d(FF)F

    move-result v0

    .line 1026
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    neg-float v1, v1

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    invoke-static {v1, v2}, Lcom/acmeaom/android/c/d/a;->d(FF)F

    move-result v1

    .line 1027
    sub-float v2, v0, v1

    mul-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v2

    .line 1028
    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/d/a;->c(FF)F

    move-result v2

    .line 1029
    mul-float/2addr v2, v5

    .line 1033
    add-float/2addr v0, v1

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    return v0
.end method

.method public static c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F
    .locals 3

    .prologue
    .line 485
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v1, p1, Lcom/acmeaom/android/a/g/m;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static c(F)Z
    .locals 1

    .prologue
    .line 961
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/acmeaom/android/a/g/m;)Z
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(D)D
    .locals 2

    .prologue
    .line 1111
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static d(F)F
    .locals 1

    .prologue
    .line 1041
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private static d(FF)F
    .locals 4

    .prologue
    .line 1045
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static d(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F
    .locals 6

    .prologue
    .line 501
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v0, v0

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v2, v2

    iget v4, p1, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static e(F)F
    .locals 2

    .prologue
    .line 1060
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static f(F)F
    .locals 2

    .prologue
    .line 1068
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static g(F)F
    .locals 2

    .prologue
    .line 1072
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static h(F)F
    .locals 4

    .prologue
    .line 1076
    const-wide/high16 v0, 0x4000000000000000L

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
