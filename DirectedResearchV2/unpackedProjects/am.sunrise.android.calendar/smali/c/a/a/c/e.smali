.class public Lc/a/a/c/e;
.super Lc/a/a/c/c;
.source "DecoratedDurationField.java"


# instance fields
.field private final a:Lc/a/a/l;


# direct methods
.method public constructor <init>(Lc/a/a/l;Lc/a/a/m;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p2}, Lc/a/a/c/c;-><init>(Lc/a/a/m;)V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lc/a/a/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    .line 60
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/l;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/l;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    invoke-virtual {v0}, Lc/a/a/l;->c()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    invoke-virtual {v0}, Lc/a/a/l;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(JJ)J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/l;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lc/a/a/l;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc/a/a/c/e;->a:Lc/a/a/l;

    return-object v0
.end method
