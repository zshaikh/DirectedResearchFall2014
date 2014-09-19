.class public final Lc/m/x/a/gv/ak;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/m/x/a/gv/ak;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lc/m/x/a/gv/ak;->b:Z

    const/16 v0, 0xa

    invoke-static {v0}, Lc/m/x/a/gv/ak;->e(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lc/m/x/a/gv/ak;->c:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    iput v2, p0, Lc/m/x/a/gv/ak;->e:I

    return-void
.end method

.method private static a([III)I
    .locals 5

    add-int/lit8 v0, p1, 0x0

    const/4 v1, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x0

    if-ne v1, v0, :cond_2

    add-int/lit8 v0, p1, 0x0

    xor-int/lit8 v0, v0, -0x1

    :goto_1
    return v0

    :cond_2
    aget v0, p0, v1

    if-ne v0, p2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lc/m/x/a/gv/ak;->e:I

    iget-object v1, p0, Lc/m/x/a/gv/ak;->c:[I

    iget-object v2, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v2, v3

    sget-object v6, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    if-eq v3, v4, :cond_0

    aget v6, v1, v3

    aput v6, v1, v4

    aput-object v5, v2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lc/m/x/a/gv/ak;->b:Z

    iput v4, p0, Lc/m/x/a/gv/ak;->e:I

    return-void
.end method

.method private static e(I)I
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x1

    mul-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    shl-int v2, v3, v1

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_1

    shl-int v0, v3, v1

    sub-int/2addr v0, v4

    :cond_0
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/ak;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/ak;->c()V

    :cond_0
    iget v0, p0, Lc/m/x/a/gv/ak;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:[I

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:[I

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/ak;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lc/m/x/a/gv/ak;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    iget-object v2, p0, Lc/m/x/a/gv/ak;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lc/m/x/a/gv/ak;->c()V

    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:[I

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    iget-object v2, p0, Lc/m/x/a/gv/ak;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lc/m/x/a/gv/ak;->e(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/m/x/a/gv/ak;->c:[I

    iget-object v4, p0, Lc/m/x/a/gv/ak;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lc/m/x/a/gv/ak;->c:[I

    iput-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/gv/ak;->c:[I

    iget-object v2, p0, Lc/m/x/a/gv/ak;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/m/x/a/gv/ak;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/m/x/a/gv/ak;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lc/m/x/a/gv/ak;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget v0, p0, Lc/m/x/a/gv/ak;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/m/x/a/gv/ak;->e:I

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lc/m/x/a/gv/ak;->e:I

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lc/m/x/a/gv/ak;->e:I

    iput-boolean v4, p0, Lc/m/x/a/gv/ak;->b:Z

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:[I

    iget v1, p0, Lc/m/x/a/gv/ak;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    sget-object v2, Lc/m/x/a/gv/ak;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/ak;->b:Z

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/ak;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/ak;->c()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/ak;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/ak;->c()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ak;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
