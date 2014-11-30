.class public Lc/a/a/u;
.super Ljava/lang/Object;
.source "PeriodType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field static h:I

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc/a/a/u;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lc/a/a/u;

.field private static k:Lc/a/a/u;

.field private static l:Lc/a/a/u;

.field private static m:Lc/a/a/u;


# instance fields
.field private final n:Ljava/lang/String;

.field private final o:[Lc/a/a/m;

.field private final p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc/a/a/u;->i:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    sput v0, Lc/a/a/u;->a:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lc/a/a/u;->b:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lc/a/a/u;->c:I

    .line 61
    const/4 v0, 0x3

    sput v0, Lc/a/a/u;->d:I

    .line 62
    const/4 v0, 0x4

    sput v0, Lc/a/a/u;->e:I

    .line 63
    const/4 v0, 0x5

    sput v0, Lc/a/a/u;->f:I

    .line 64
    const/4 v0, 0x6

    sput v0, Lc/a/a/u;->g:I

    .line 65
    const/4 v0, 0x7

    sput v0, Lc/a/a/u;->h:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lc/a/a/m;[I)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lc/a/a/u;->n:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    .line 598
    iput-object p3, p0, Lc/a/a/u;->p:[I

    .line 599
    return-void
.end method

.method public static a()Lc/a/a/u;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 102
    sget-object v0, Lc/a/a/u;->j:Lc/a/a/u;

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lc/a/a/u;

    const-string v1, "Standard"

    new-array v2, v5, [Lc/a/a/m;

    const/4 v3, 0x0

    invoke-static {}, Lc/a/a/m;->j()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lc/a/a/m;->i()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lc/a/a/m;->g()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lc/a/a/m;->d()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lc/a/a/m;->c()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/u;-><init>(Ljava/lang/String;[Lc/a/a/m;[I)V

    .line 114
    sput-object v0, Lc/a/a/u;->j:Lc/a/a/u;

    .line 116
    :cond_0
    return-object v0

    .line 104
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static b()Lc/a/a/u;
    .locals 5

    .prologue
    .line 333
    sget-object v0, Lc/a/a/u;->k:Lc/a/a/u;

    .line 334
    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lc/a/a/u;

    const-string v1, "Time"

    const/4 v2, 0x4

    new-array v2, v2, [Lc/a/a/m;

    const/4 v3, 0x0

    invoke-static {}, Lc/a/a/m;->d()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lc/a/a/m;->c()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/u;-><init>(Ljava/lang/String;[Lc/a/a/m;[I)V

    .line 343
    sput-object v0, Lc/a/a/u;->k:Lc/a/a/u;

    .line 345
    :cond_0
    return-object v0

    .line 335
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static c()Lc/a/a/u;
    .locals 5

    .prologue
    .line 408
    sget-object v0, Lc/a/a/u;->l:Lc/a/a/u;

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lc/a/a/u;

    const-string v1, "Days"

    const/4 v2, 0x1

    new-array v2, v2, [Lc/a/a/m;

    const/4 v3, 0x0

    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/u;-><init>(Ljava/lang/String;[Lc/a/a/m;[I)V

    .line 415
    sput-object v0, Lc/a/a/u;->l:Lc/a/a/u;

    .line 417
    :cond_0
    return-object v0

    .line 410
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static d()Lc/a/a/u;
    .locals 5

    .prologue
    .line 462
    sget-object v0, Lc/a/a/u;->m:Lc/a/a/u;

    .line 463
    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lc/a/a/u;

    const-string v1, "Seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Lc/a/a/m;

    const/4 v3, 0x0

    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/u;-><init>(Ljava/lang/String;[Lc/a/a/m;[I)V

    .line 469
    sput-object v0, Lc/a/a/u;->m:Lc/a/a/u;

    .line 471
    :cond_0
    return-object v0

    .line 464
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method a(Lc/a/a/z;I)I
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lc/a/a/u;->p:[I

    aget v0, v0, p2

    .line 675
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, v0}, Lc/a/a/z;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Lc/a/a/m;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lc/a/a/m;)Z
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lc/a/a/u;->b(Lc/a/a/m;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lc/a/a/m;)I
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0}, Lc/a/a/u;->f()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 649
    iget-object v2, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 653
    :goto_1
    return v0

    .line 648
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lc/a/a/u;->n:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 835
    if-ne p0, p1, :cond_0

    .line 836
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    instance-of v0, p1, Lc/a/a/u;

    if-nez v0, :cond_1

    .line 839
    const/4 v0, 0x0

    goto :goto_0

    .line 841
    :cond_1
    check-cast p1, Lc/a/a/u;

    .line 842
    iget-object v0, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    iget-object v1, p1, Lc/a/a/u;->o:[Lc/a/a/m;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 851
    move v1, v0

    .line 852
    :goto_0
    iget-object v2, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 853
    iget-object v2, p0, Lc/a/a/u;->o:[Lc/a/a/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
