.class public abstract Lc/a/a/a/g;
.super Ljava/lang/Object;
.source "BaseSingleFieldPeriod.java"

# interfaces
.implements Lc/a/a/z;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/z;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lc/a/a/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lc/a/a/a/g;->a:I

    .line 159
    return-void
.end method

.method protected static a(Lc/a/a/y;Lc/a/a/y;Lc/a/a/m;)I
    .locals 5

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadableInstant objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-static {p0}, Lc/a/a/f;->b(Lc/a/a/y;)Lc/a/a/a;

    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Lc/a/a/m;->a(Lc/a/a/a;)Lc/a/a/l;

    move-result-object v0

    invoke-interface {p1}, Lc/a/a/y;->a()J

    move-result-wide v1

    invoke-interface {p0}, Lc/a/a/y;->a()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lc/a/a/l;->c(JJ)I

    move-result v0

    .line 73
    return v0
.end method


# virtual methods
.method public a(Lc/a/a/a/g;)I
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-virtual {p1}, Lc/a/a/a/g;->d()I

    move-result v0

    .line 336
    invoke-virtual {p0}, Lc/a/a/a/g;->d()I

    move-result v1

    .line 337
    if-le v1, v0, :cond_1

    .line 338
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 340
    :cond_1
    if-ge v1, v0, :cond_2

    .line 341
    const/4 v0, -0x1

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lc/a/a/m;)I
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lc/a/a/a/g;->a()Lc/a/a/m;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lc/a/a/a/g;->d()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a()Lc/a/a/m;
.end method

.method public b(I)Lc/a/a/m;
    .locals 2

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/g;->a()Lc/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lc/a/a/u;
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/g;->d()I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lc/a/a/a/g;

    invoke-virtual {p0, p1}, Lc/a/a/a/g;->a(Lc/a/a/a/g;)I

    move-result v0

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lc/a/a/a/g;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-ne p0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    instance-of v2, p1, Lc/a/a/z;

    if-nez v2, :cond_2

    move v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    check-cast p1, Lc/a/a/z;

    .line 308
    invoke-interface {p1}, Lc/a/a/z;->b()Lc/a/a/u;

    move-result-object v2

    invoke-virtual {p0}, Lc/a/a/a/g;->b()Lc/a/a/u;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-interface {p1, v1}, Lc/a/a/z;->c(I)I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/a/g;->d()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 317
    .line 318
    invoke-virtual {p0}, Lc/a/a/a/g;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x1cb

    .line 319
    mul-int/lit8 v0, v0, 0x1b

    invoke-virtual {p0}, Lc/a/a/a/g;->a()Lc/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    return v0
.end method
