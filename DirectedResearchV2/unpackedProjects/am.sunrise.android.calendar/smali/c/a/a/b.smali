.class public final Lc/a/a/b;
.super Lc/a/a/a/d;
.source "DateTime.java"

# interfaces
.implements Lc/a/a/x;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lc/a/a/a/d;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lc/a/a/a/d;-><init>(J)V

    .line 194
    return-void
.end method

.method public constructor <init>(JLc/a/a/a;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/a/d;-><init>(JLc/a/a/a;)V

    .line 221
    return-void
.end method

.method public constructor <init>(JLc/a/a/i;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/a/d;-><init>(JLc/a/a/i;)V

    .line 207
    return-void
.end method

.method public static c_()Lc/a/a/b;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lc/a/a/b;

    invoke-direct {v0}, Lc/a/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lc/a/a/b;
    .locals 3

    .prologue
    .line 1415
    if-nez p1, :cond_0

    .line 1419
    :goto_0
    return-object p0

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lc/a/a/b;->b()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a;->i()Lc/a/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lc/a/a/l;->b(JI)J

    move-result-wide v0

    .line 1419
    invoke-virtual {p0, v0, v1}, Lc/a/a/b;->a_(J)Lc/a/a/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a_(J)Lc/a/a/b;
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lc/a/a/b;->a()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lc/a/a/b;

    invoke-virtual {p0}, Lc/a/a/b;->b()Lc/a/a/a;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lc/a/a/b;-><init>(JLc/a/a/a;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public b(I)Lc/a/a/b;
    .locals 3

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1446
    :goto_0
    return-object p0

    .line 1445
    :cond_0
    invoke-virtual {p0}, Lc/a/a/b;->b()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a;->f()Lc/a/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lc/a/a/l;->b(JI)J

    move-result-wide v0

    .line 1446
    invoke-virtual {p0, v0, v1}, Lc/a/a/b;->a_(J)Lc/a/a/b;

    move-result-object p0

    goto :goto_0
.end method
