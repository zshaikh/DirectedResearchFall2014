.class Lc/a/a/b/j;
.super Lc/a/a/c/h;
.source "BasicMonthOfYearDateTimeField.java"


# instance fields
.field private final a:Lc/a/a/b/d;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lc/a/a/b/d;I)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lc/a/a/d;->r()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/d;->V()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/h;-><init>(Lc/a/a/d;J)V

    .line 53
    iput-object p1, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    .line 54
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->S()I

    move-result v0

    iput v0, p0, Lc/a/a/b/j;->c:I

    .line 55
    iput p2, p0, Lc/a/a/b/j;->d:I

    .line 56
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->b(J)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 7

    .prologue
    .line 93
    if-nez p3, :cond_0

    .line 147
    :goto_0
    return-wide p1

    .line 99
    :cond_0
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->h(J)I

    move-result v0

    int-to-long v4, v0

    .line 104
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v2

    .line 105
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, v2}, Lc/a/a/b/d;->a(JI)I

    move-result v3

    .line 113
    add-int/lit8 v0, v3, -0x1

    add-int/2addr v0, p3

    .line 114
    if-ltz v0, :cond_2

    .line 115
    iget v1, p0, Lc/a/a/b/j;->c:I

    div-int v1, v0, v1

    add-int/2addr v1, v2

    .line 116
    iget v6, p0, Lc/a/a/b/j;->c:I

    rem-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_1
    :goto_1
    iget-object v6, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v6, p1, p2, v2, v3}, Lc/a/a/b/d;->a(JII)I

    move-result v3

    .line 138
    iget-object v2, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v2, v1, v0}, Lc/a/a/b/d;->b(II)I

    move-result v2

    .line 139
    if-le v3, v2, :cond_4

    .line 145
    :goto_2
    iget-object v3, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v3, v1, v0, v2}, Lc/a/a/b/d;->a(III)J

    move-result-wide v0

    .line 147
    add-long p1, v0, v4

    goto :goto_0

    .line 118
    :cond_2
    iget v1, p0, Lc/a/a/b/j;->c:I

    div-int v1, v0, v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 120
    iget v6, p0, Lc/a/a/b/j;->c:I

    rem-int/2addr v0, v6

    .line 122
    if-nez v0, :cond_3

    .line 123
    iget v0, p0, Lc/a/a/b/j;->c:I

    .line 125
    :cond_3
    iget v6, p0, Lc/a/a/b/j;->c:I

    sub-int v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    .line 127
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public a(JJ)J
    .locals 10

    .prologue
    .line 152
    long-to-int v0, p3

    .line 153
    int-to-long v1, v0

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/j;->a(JI)J

    move-result-wide v0

    .line 200
    :goto_0
    return-wide v0

    .line 159
    :cond_0
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->h(J)I

    move-result v0

    int-to-long v4, v0

    .line 161
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v6

    .line 162
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, v6}, Lc/a/a/b/d;->a(JI)I

    move-result v7

    .line 165
    add-int/lit8 v0, v7, -0x1

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 166
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 167
    int-to-long v2, v6

    iget v8, p0, Lc/a/a/b/j;->c:I

    int-to-long v8, v8

    div-long v8, v0, v8

    add-long/2addr v2, v8

    .line 168
    iget v8, p0, Lc/a/a/b/j;->c:I

    int-to-long v8, v8

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 182
    :cond_1
    :goto_1
    iget-object v8, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v8}, Lc/a/a/b/d;->Q()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    iget-object v8, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v8}, Lc/a/a/b/d;->R()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of add amount is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_3
    int-to-long v2, v6

    iget v8, p0, Lc/a/a/b/j;->c:I

    int-to-long v8, v8

    div-long v8, v0, v8

    add-long/2addr v2, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 172
    iget v8, p0, Lc/a/a/b/j;->c:I

    int-to-long v8, v8

    rem-long/2addr v0, v8

    long-to-int v0, v0

    .line 173
    if-nez v0, :cond_4

    .line 174
    iget v0, p0, Lc/a/a/b/j;->c:I

    .line 176
    :cond_4
    iget v1, p0, Lc/a/a/b/j;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 177
    const-wide/16 v8, 0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_1

    .line 178
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1

    .line 189
    :cond_5
    long-to-int v2, v2

    .line 190
    long-to-int v3, v0

    .line 192
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, v6, v7}, Lc/a/a/b/d;->a(JII)I

    move-result v1

    .line 193
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, v2, v3}, Lc/a/a/b/d;->b(II)I

    move-result v0

    .line 194
    if-le v1, v0, :cond_6

    .line 198
    :goto_2
    iget-object v1, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v1, v2, v3, v0}, Lc/a/a/b/d;->a(III)J

    move-result-wide v0

    .line 200
    add-long/2addr v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public b(JI)J
    .locals 4

    .prologue
    .line 299
    const/4 v0, 0x1

    iget v1, p0, Lc/a/a/b/j;->c:I

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 301
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v2

    .line 303
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, v2}, Lc/a/a/b/d;->b(JI)I

    move-result v1

    .line 304
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, v2, p3}, Lc/a/a/b/d;->b(II)I

    move-result v0

    .line 305
    if-le v1, v0, :cond_0

    .line 310
    :goto_0
    iget-object v1, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v1, v2, p3, v0}, Lc/a/a/b/d;->a(III)J

    move-result-wide v0

    iget-object v2, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v2, p1, p2}, Lc/a/a/b/d;->h(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v1

    .line 322
    iget-object v2, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v2, v1}, Lc/a/a/b/d;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v2, p1, p2, v1}, Lc/a/a/b/d;->a(JI)I

    move-result v1

    iget v2, p0, Lc/a/a/b/j;->d:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 325
    :cond_0
    return v0
.end method

.method public c(JJ)J
    .locals 8

    .prologue
    .line 244
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 245
    invoke-virtual {p0, p3, p4, p1, p2}, Lc/a/a/b/j;->b(JJ)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 281
    :cond_0
    :goto_0
    return-wide v0

    .line 248
    :cond_1
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v2

    .line 249
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, v2}, Lc/a/a/b/d;->a(JI)I

    move-result v3

    .line 250
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p3, p4}, Lc/a/a/b/d;->a(J)I

    move-result v4

    .line 251
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p3, p4, v4}, Lc/a/a/b/d;->a(JI)I

    move-result v5

    .line 253
    sub-int v0, v2, v4

    int-to-long v0, v0

    iget v6, p0, Lc/a/a/b/j;->c:I

    int-to-long v6, v6

    mul-long/2addr v0, v6

    int-to-long v6, v3

    add-long/2addr v0, v6

    int-to-long v6, v5

    sub-long/2addr v0, v6

    .line 257
    iget-object v6, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v6, p1, p2, v2, v3}, Lc/a/a/b/d;->a(JII)I

    move-result v6

    .line 259
    iget-object v7, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v7, v2, v3}, Lc/a/a/b/d;->b(II)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 261
    iget-object v7, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v7, p3, p4, v4, v5}, Lc/a/a/b/d;->a(JII)I

    move-result v7

    .line 263
    if-le v7, v6, :cond_2

    .line 267
    iget-object v7, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v7}, Lc/a/a/b/d;->u()Lc/a/a/c;

    move-result-object v7

    invoke-virtual {v7, p3, p4, v6}, Lc/a/a/c;->b(JI)J

    move-result-wide p3

    .line 272
    :cond_2
    iget-object v6, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v6, v2, v3}, Lc/a/a/b/d;->a(II)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 274
    iget-object v6, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v6, v4, v5}, Lc/a/a/b/d;->a(II)J

    move-result-wide v4

    sub-long v4, p3, v4

    .line 277
    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 278
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public d(J)J
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v0

    .line 351
    iget-object v1, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2, v0}, Lc/a/a/b/d;->a(JI)I

    move-result v1

    .line 352
    iget-object v2, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v2, v0, v1}, Lc/a/a/b/d;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->D()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/a/a/l;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lc/a/a/b/j;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->s()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lc/a/a/b/j;->c:I

    return v0
.end method

.method public i(J)J
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/j;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method
