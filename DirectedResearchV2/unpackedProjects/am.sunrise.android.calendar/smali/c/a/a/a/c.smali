.class public abstract Lc/a/a/a/c;
.super Ljava/lang/Object;
.source "AbstractPeriod.java"

# interfaces
.implements Lc/a/a/z;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/m;)I
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lc/a/a/a/c;->b(Lc/a/a/m;)I

    move-result v0

    .line 114
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lc/a/a/a/c;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public b(Lc/a/a/m;)I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lc/a/a/a/c;->b()Lc/a/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/u;->b(Lc/a/a/m;)I

    move-result v0

    return v0
.end method

.method public b(I)Lc/a/a/m;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lc/a/a/a/c;->b()Lc/a/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/u;->a(I)Lc/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    instance-of v2, p1, Lc/a/a/z;

    if-nez v2, :cond_2

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    check-cast p1, Lc/a/a/z;

    .line 190
    invoke-virtual {p0}, Lc/a/a/a/c;->h()I

    move-result v2

    invoke-interface {p1}, Lc/a/a/z;->h()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lc/a/a/a/c;->h()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lc/a/a/a/c;->c(I)I

    move-result v4

    invoke-interface {p1, v2}, Lc/a/a/z;->c(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v2}, Lc/a/a/a/c;->b(I)Lc/a/a/m;

    move-result-object v4

    invoke-interface {p1, v2}, Lc/a/a/z;->b(I)Lc/a/a/m;

    move-result-object v5

    if-eq v4, v5, :cond_5

    :cond_4
    move v0, v1

    .line 195
    goto :goto_0

    .line 193
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public h()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lc/a/a/a/c;->b()Lc/a/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/u;->f()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/16 v1, 0x11

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0}, Lc/a/a/a/c;->h()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 209
    mul-int/lit8 v1, v1, 0x1b

    invoke-virtual {p0, v0}, Lc/a/a/a/c;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 210
    mul-int/lit8 v1, v1, 0x1b

    invoke-virtual {p0, v0}, Lc/a/a/a/c;->b(I)Lc/a/a/m;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lc/a/a/d/aa;->a()Lc/a/a/d/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/d/ab;->a(Lc/a/a/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
