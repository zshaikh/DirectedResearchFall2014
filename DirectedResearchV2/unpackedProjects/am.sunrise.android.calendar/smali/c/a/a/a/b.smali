.class public abstract Lc/a/a/a/b;
.super Ljava/lang/Object;
.source "AbstractInstant.java"

# interfaces
.implements Lc/a/a/y;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/y;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 296
    if-ne p0, p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    invoke-interface {p1}, Lc/a/a/y;->a()J

    move-result-wide v1

    .line 301
    invoke-virtual {p0}, Lc/a/a/a/b;->a()J

    move-result-wide v3

    .line 304
    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 307
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 308
    const/4 v0, -0x1

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)Z
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lc/a/a/a/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lc/a/a/y;

    invoke-virtual {p0, p1}, Lc/a/a/a/b;->a(Lc/a/a/y;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lc/a/a/f;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/a/a/a/b;->b(J)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-ne p0, p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    instance-of v2, p1, Lc/a/a/y;

    if-nez v2, :cond_2

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    check-cast p1, Lc/a/a/y;

    .line 266
    invoke-virtual {p0}, Lc/a/a/a/b;->a()J

    move-result-wide v2

    invoke-interface {p1}, Lc/a/a/y;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lc/a/a/a/b;->b()Lc/a/a/a;

    move-result-object v2

    invoke-interface {p1}, Lc/a/a/y;->b()Lc/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lc/a/a/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 278
    invoke-virtual {p0}, Lc/a/a/a/b;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lc/a/a/a/b;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lc/a/a/a/b;->b()Lc/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lc/a/a/d/y;->b()Lc/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/d/c;->a(Lc/a/a/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
