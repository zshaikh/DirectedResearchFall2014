.class final Lc/a/a/e/b;
.super Ljava/lang/Object;
.source "CachedDateTimeZone.java"


# instance fields
.field public final a:J

.field public final b:Lc/a/a/i;

.field c:Lc/a/a/e/b;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lc/a/a/i;J)V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lc/a/a/e/b;->e:I

    .line 178
    iput v0, p0, Lc/a/a/e/b;->f:I

    .line 181
    iput-wide p2, p0, Lc/a/a/e/b;->a:J

    .line 182
    iput-object p1, p0, Lc/a/a/e/b;->b:Lc/a/a/i;

    .line 183
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    iget-wide v0, v0, Lc/a/a/e/b;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 187
    :cond_0
    iget-object v0, p0, Lc/a/a/e/b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lc/a/a/e/b;->b:Lc/a/a/i;

    iget-wide v1, p0, Lc/a/a/e/b;->a:J

    invoke-virtual {v0, v1, v2}, Lc/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/e/b;->d:Ljava/lang/String;

    .line 190
    :cond_1
    iget-object v0, p0, Lc/a/a/e/b;->d:Ljava/lang/String;

    .line 192
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    invoke-virtual {v0, p1, p2}, Lc/a/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)I
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    iget-wide v0, v0, Lc/a/a/e/b;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 197
    :cond_0
    iget v0, p0, Lc/a/a/e/b;->e:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lc/a/a/e/b;->b:Lc/a/a/i;

    iget-wide v1, p0, Lc/a/a/e/b;->a:J

    invoke-virtual {v0, v1, v2}, Lc/a/a/i;->b(J)I

    move-result v0

    iput v0, p0, Lc/a/a/e/b;->e:I

    .line 200
    :cond_1
    iget v0, p0, Lc/a/a/e/b;->e:I

    .line 202
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    invoke-virtual {v0, p1, p2}, Lc/a/a/e/b;->b(J)I

    move-result v0

    goto :goto_0
.end method
