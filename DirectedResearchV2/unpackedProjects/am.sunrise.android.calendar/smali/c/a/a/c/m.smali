.class public abstract Lc/a/a/c/m;
.super Lc/a/a/c/b;
.source "PreciseDurationDateTimeField.java"


# instance fields
.field final a:J

.field private final b:Lc/a/a/l;


# direct methods
.method public constructor <init>(Lc/a/a/d;Lc/a/a/l;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc/a/a/c/b;-><init>(Lc/a/a/d;)V

    .line 51
    invoke-virtual {p2}, Lc/a/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unit duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p2}, Lc/a/a/l;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/c/m;->a:J

    .line 56
    iget-wide v0, p0, Lc/a/a/c/m;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The unit milliseconds must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p2, p0, Lc/a/a/c/m;->b:Lc/a/a/l;

    .line 61
    return-void
.end method


# virtual methods
.method public b(JI)J
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lc/a/a/c/m;->g()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/c/m;->c(JI)I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lc/a/a/c/m;->a(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected c(JI)I
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lc/a/a/c/m;->c(J)I

    move-result v0

    return v0
.end method

.method public d(J)J
    .locals 4

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 94
    iget-wide v0, p0, Lc/a/a/c/m;->a:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    .line 97
    :goto_0
    return-wide v0

    .line 96
    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    .line 97
    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public d()Lc/a/a/l;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc/a/a/c/m;->b:Lc/a/a/l;

    return-object v0
.end method

.method public e(J)J
    .locals 4

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 111
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    .line 112
    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    add-long/2addr v0, v2

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lc/a/a/c/m;->a:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lc/a/a/c/m;->a:J

    return-wide v0
.end method

.method public i(J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 128
    iget-wide v0, p0, Lc/a/a/c/m;->a:J

    rem-long v0, p1, v0

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p1, v4

    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    rem-long/2addr v0, v2

    iget-wide v2, p0, Lc/a/a/c/m;->a:J

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    goto :goto_0
.end method