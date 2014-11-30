.class public abstract Lc/a/a/c/d;
.super Lc/a/a/c/b;
.source "DecoratedDateTimeField.java"


# instance fields
.field private final a:Lc/a/a/c;


# direct methods
.method protected constructor <init>(Lc/a/a/c;Lc/a/a/d;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lc/a/a/c/b;-><init>(Lc/a/a/d;)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lc/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    .line 63
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/c;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lc/a/a/l;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->d()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->e()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public final i()Lc/a/a/c;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc/a/a/c/d;->a:Lc/a/a/c;

    return-object v0
.end method
