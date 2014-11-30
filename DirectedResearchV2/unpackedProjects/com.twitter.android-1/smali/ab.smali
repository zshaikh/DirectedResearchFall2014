.class public final Lab;
.super Ljava/lang/Object;


# static fields
.field private static a:Lab;


# instance fields
.field private b:Lab;

.field private c:Z

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:[Lak;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lab;

    invoke-direct {v0}, Lab;-><init>()V

    sput-object v0, Lab;->a:Lab;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lab;->d:Z

    iput-boolean v0, p0, Lab;->c:Z

    iput-boolean v0, p0, Lab;->j:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lab;->a(I)V

    return-void
.end method

.method private constructor <init>(Lab;ZZ[Ljava/lang/String;[Lak;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab;->b:Lab;

    iput-boolean p2, p0, Lab;->d:Z

    iput-boolean p3, p0, Lab;->c:Z

    iput-object p4, p0, Lab;->e:[Ljava/lang/String;

    iput-object p5, p0, Lab;->f:[Lak;

    iput p6, p0, Lab;->g:I

    array-length v0, p4

    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lab;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lab;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lab;->j:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a([CII)I
    .locals 3

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a()Lab;
    .locals 7

    const/4 v2, 0x1

    sget-object v3, Lab;->a:Lab;

    new-instance v0, Lab;

    const/4 v1, 0x0

    iget-object v4, v3, Lab;->e:[Ljava/lang/String;

    iget-object v5, v3, Lab;->f:[Lak;

    iget v6, v3, Lab;->g:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lab;-><init>(Lab;ZZ[Ljava/lang/String;[Lak;I)V

    return-object v0
.end method

.method private a(I)V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lab;->e:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Lak;

    iput-object v0, p0, Lab;->f:[Lak;

    const/16 v0, 0x3f

    iput v0, p0, Lab;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lab;->g:I

    const/16 v0, 0x30

    iput v0, p0, Lab;->h:I

    return-void
.end method

.method private declared-synchronized a(Lab;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lab;->g:I

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lab;->a(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lab;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p1, Lab;->g:I

    iget v1, p0, Lab;->g:I

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lab;->e:[Ljava/lang/String;

    iput-object v0, p0, Lab;->e:[Ljava/lang/String;

    iget-object v0, p1, Lab;->f:[Lak;

    iput-object v0, p0, Lab;->f:[Lak;

    iget v0, p1, Lab;->g:I

    iput v0, p0, Lab;->g:I

    iget v0, p1, Lab;->h:I

    iput v0, p0, Lab;->h:I

    iget v0, p1, Lab;->i:I

    iput v0, p0, Lab;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 12

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lab;->e:[Ljava/lang/String;

    array-length v3, v0

    add-int v0, v3, v3

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_1

    iput v1, p0, Lab;->g:I

    iget-object v0, p0, Lab;->e:[Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lab;->f:[Lak;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lab;->j:Z

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lab;->e:[Ljava/lang/String;

    iget-object v5, p0, Lab;->f:[Lak;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lab;->e:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lak;

    iput-object v2, p0, Lab;->f:[Lak;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lab;->i:I

    iget v0, p0, Lab;->h:I

    iget v2, p0, Lab;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lab;->h:I

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v6, v4, v2

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Lab;->a(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lab;->i:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lab;->e:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_3

    iget-object v8, p0, Lab;->e:[Ljava/lang/String;

    aput-object v6, v8, v7

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lab;->f:[Lak;

    new-instance v9, Lak;

    iget-object v10, p0, Lab;->f:[Lak;

    aget-object v10, v10, v7

    invoke-direct {v9, v6, v10}, Lak;-><init>(Ljava/lang/String;Lak;)V

    aput-object v9, v8, v7

    goto :goto_1

    :cond_4
    shr-int/lit8 v4, v3, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_2
    if-ge v0, v4, :cond_7

    aget-object v2, v5, v0

    :goto_3
    if-eqz v2, :cond_6

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lab;->i:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lab;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_5

    iget-object v7, p0, Lab;->e:[Ljava/lang/String;

    aput-object v1, v7, v6

    :goto_4
    invoke-virtual {v2}, Lak;->b()Lak;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto :goto_3

    :cond_5
    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lab;->f:[Lak;

    new-instance v8, Lak;

    iget-object v9, p0, Lab;->f:[Lak;

    aget-object v9, v9, v6

    invoke-direct {v8, v1, v9}, Lak;-><init>(Ljava/lang/String;Lak;)V

    aput-object v8, v7, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lab;->g:I

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lab;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries; now have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(ZZ)Lab;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lab;

    iget-object v4, p0, Lab;->e:[Ljava/lang/String;

    iget-object v5, p0, Lab;->f:[Lak;

    iget v6, p0, Lab;->g:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lab;-><init>(Lab;ZZ[Ljava/lang/String;[Lak;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([CIII)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-gtz p3, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v0, p0, Lab;->d:Z

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lab;->i:I

    and-int v2, p4, v0

    iget-object v0, p0, Lab;->e:[Ljava/lang/String;

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_4

    move v0, v1

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, p2, v0

    aget-char v5, p1, v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_2

    :cond_3
    if-ne v0, p3, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lab;->f:[Lak;

    shr-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2, p3}, Lak;->a([CII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lab;->j:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lab;->e:[Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lab;->e:[Ljava/lang/String;

    iget-object v4, p0, Lab;->e:[Ljava/lang/String;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lab;->f:[Lak;

    array-length v3, v0

    new-array v4, v3, [Lak;

    iput-object v4, p0, Lab;->f:[Lak;

    iget-object v4, p0, Lab;->f:[Lak;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lab;->j:Z

    move v0, v2

    :goto_1
    iget v1, p0, Lab;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lab;->g:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v2, p0, Lab;->c:Z

    if-eqz v2, :cond_6

    sget-object v2, Lorg/codehaus/jackson/util/InternCache;->a:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/util/InternCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v2, p0, Lab;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    iget-object v2, p0, Lab;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto :goto_0

    :cond_7
    iget v0, p0, Lab;->g:I

    iget v1, p0, Lab;->h:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lab;->c()V

    invoke-static {p1, p2, p3}, Lab;->a([CII)I

    move-result v0

    iget v1, p0, Lab;->i:I

    and-int/2addr v0, v1

    goto :goto_1

    :cond_8
    shr-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lab;->f:[Lak;

    new-instance v3, Lak;

    iget-object v4, p0, Lab;->f:[Lak;

    aget-object v4, v4, v0

    invoke-direct {v3, v1, v4}, Lak;-><init>(Ljava/lang/String;Lak;)V

    aput-object v3, v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lab;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lab;->b:Lab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab;->b:Lab;

    invoke-direct {v0, p0}, Lab;->a(Lab;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lab;->j:Z

    goto :goto_0
.end method
