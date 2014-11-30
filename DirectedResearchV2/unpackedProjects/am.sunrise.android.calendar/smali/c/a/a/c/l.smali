.class public Lc/a/a/c/l;
.super Lc/a/a/c/m;
.source "PreciseDateTimeField.java"


# instance fields
.field private final b:I

.field private final c:Lc/a/a/l;


# direct methods
.method public constructor <init>(Lc/a/a/d;Lc/a/a/l;Lc/a/a/l;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lc/a/a/c/m;-><init>(Lc/a/a/d;Lc/a/a/l;)V

    .line 60
    invoke-virtual {p3}, Lc/a/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p3}, Lc/a/a/l;->d()J

    move-result-wide v0

    .line 65
    invoke-virtual {p0}, Lc/a/a/c/l;->i()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lc/a/a/c/l;->b:I

    .line 66
    iget v0, p0, Lc/a/a/c/l;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The effective range must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p3, p0, Lc/a/a/c/l;->c:Lc/a/a/l;

    .line 71
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 5

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lc/a/a/c/l;->i()J

    move-result-wide v0

    div-long v0, p1, v0

    iget v2, p0, Lc/a/a/c/l;->b:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc/a/a/c/l;->b:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-virtual {p0}, Lc/a/a/c/l;->i()J

    move-result-wide v3

    div-long/2addr v1, v3

    iget v3, p0, Lc/a/a/c/l;->b:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b(JI)J
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lc/a/a/c/l;->g()I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/c/l;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 113
    invoke-virtual {p0, p1, p2}, Lc/a/a/c/l;->a(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lc/a/a/c/l;->a:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc/a/a/c/l;->c:Lc/a/a/l;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lc/a/a/c/l;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
