.class public final Lc/m/x/a/gv/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


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

    sput-object v0, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/m/x/a/gv/au;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lc/m/x/a/gv/au;->b:Z

    const/16 v0, 0xa

    invoke-static {v0}, Lc/m/x/a/gv/ak;->a(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    iput v2, p0, Lc/m/x/a/gv/au;->e:I

    return-void
.end method

.method private c()Lc/m/x/a/gv/au;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/m/x/a/gv/au",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/au;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lc/m/x/a/gv/au;->c:[I

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lc/m/x/a/gv/au;->e:I

    iget-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    iget-object v2, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v2, v3

    sget-object v6, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    if-eq v3, v4, :cond_0

    aget v6, v1, v3

    aput v6, v1, v4

    aput-object v5, v2, v4

    const/4 v5, 0x0

    aput-object v5, v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lc/m/x/a/gv/au;->b:Z

    iput v4, p0, Lc/m/x/a/gv/au;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/au;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/au;->d()V

    :cond_0
    iget v0, p0, Lc/m/x/a/gv/au;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/au;->c:[I

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/au;->c:[I

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lc/m/x/a/gv/au;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    iget-object v2, p0, Lc/m/x/a/gv/au;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lc/m/x/a/gv/au;->d()V

    iget-object v0, p0, Lc/m/x/a/gv/au;->c:[I

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    iget-object v2, p0, Lc/m/x/a/gv/au;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lc/m/x/a/gv/ak;->a(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/m/x/a/gv/au;->c:[I

    iget-object v4, p0, Lc/m/x/a/gv/au;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lc/m/x/a/gv/au;->c:[I

    iput-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    iget-object v2, p0, Lc/m/x/a/gv/au;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/m/x/a/gv/au;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lc/m/x/a/gv/au;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lc/m/x/a/gv/au;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget v0, p0, Lc/m/x/a/gv/au;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/m/x/a/gv/au;->e:I

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lc/m/x/a/gv/au;->e:I

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lc/m/x/a/gv/au;->e:I

    iput-boolean v4, p0, Lc/m/x/a/gv/au;->b:Z

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/au;->c:[I

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    invoke-static {v0, v1, p1}, Lc/m/x/a/gv/ak;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    sget-object v2, Lc/m/x/a/gv/au;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/au;->b:Z

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/au;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/au;->d()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/au;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lc/m/x/a/gv/au;->c()Lc/m/x/a/gv/au;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/m/x/a/gv/au;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/gv/au;->d()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/au;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lc/m/x/a/gv/au;->a()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/au;->e:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lc/m/x/a/gv/au;->e:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Lc/m/x/a/gv/au;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lc/m/x/a/gv/au;->d(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
