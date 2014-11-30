.class public Lcom/acmeaom/android/a/h/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/h/b;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/acmeaom/android/a/h/b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/acmeaom/android/a/h/a;->a:Lcom/acmeaom/android/a/h/b;

    .line 34
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/h/a;->a(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 11

    .prologue
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    .line 70
    const-wide/16 v0, 0x0

    move-wide v1, v0

    :goto_0
    cmp-long v0, v1, v4

    if-gez v0, :cond_0

    .line 71
    long-to-int v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    .line 72
    new-instance v6, Lcom/acmeaom/android/a/a/d/a;

    iget v7, v0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v7, v7

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v9, v0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 73
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const-wide/16 v6, 0x1

    add-long v0, v1, v6

    move-wide v1, v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/h/a;->a:Lcom/acmeaom/android/a/h/b;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/a/h/a;->a:Lcom/acmeaom/android/a/h/b;

    invoke-interface {v0, v3}, Lcom/acmeaom/android/a/h/b;->a(Ljava/util/ArrayList;)V

    .line 78
    :cond_1
    iput-object v3, p0, Lcom/acmeaom/android/a/h/a;->b:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/h/a;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/a/h/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 52
    invoke-direct {p0, v1}, Lcom/acmeaom/android/a/h/a;->a(Ljava/util/ArrayList;)V

    .line 53
    return-void
.end method

.method private a(FFFFFFFF)Z
    .locals 12

    .prologue
    .line 135
    sub-float v0, p5, p3

    .line 136
    sub-float v1, p6, p4

    .line 137
    sub-float v2, p1, p5

    .line 138
    sub-float v3, p2, p6

    .line 139
    sub-float v4, p3, p1

    .line 140
    sub-float v5, p4, p2

    .line 141
    sub-float v6, p7, p1

    .line 142
    sub-float v7, p8, p2

    .line 143
    sub-float v8, p7, p3

    .line 144
    sub-float v9, p8, p4

    .line 145
    sub-float v10, p7, p5

    .line 146
    sub-float v11, p8, p6

    .line 148
    mul-float/2addr v0, v9

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    .line 149
    mul-float v1, v4, v7

    mul-float v4, v5, v6

    sub-float/2addr v1, v4

    .line 150
    mul-float/2addr v2, v11

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    .line 152
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;IIII[I)Z
    .locals 10

    .prologue
    .line 159
    aget v0, p6, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 160
    aget v0, p6, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v2, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 162
    aget v0, p6, p3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v3, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 163
    aget v0, p6, p3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v4, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 165
    aget v0, p6, p4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v5, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 166
    aget v0, p6, p4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v6, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 168
    const v0, 0x2edbe6ff

    sub-float v7, v3, v1

    sub-float v8, v6, v2

    mul-float/2addr v7, v8

    sub-float v8, v4, v2

    sub-float v9, v5, v1

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpl-float v0, v0, v7

    if-lez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, p5, :cond_3

    .line 173
    if-eq v9, p2, :cond_1

    if-eq v9, p3, :cond_1

    if-ne v9, p4, :cond_2

    .line 172
    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 176
    :cond_2
    aget v0, p6, v9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v7, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 177
    aget v0, p6, v9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v8, v0, Lcom/acmeaom/android/a/g/m;->e:F

    move-object v0, p0

    .line 178
    invoke-direct/range {v0 .. v8}, Lcom/acmeaom/android/a/h/a;->a(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 190
    const/4 v0, 0x3

    if-ge v5, v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v7

    .line 194
    :cond_1
    new-array v6, v5, [I

    .line 198
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/acmeaom/android/a/h/a;->b(Ljava/util/ArrayList;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v0, v7

    .line 199
    :goto_1
    if-ge v0, v5, :cond_3

    .line 200
    aput v0, v6, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v7

    .line 203
    :goto_2
    if-ge v0, v5, :cond_3

    .line 204
    add-int/lit8 v1, v5, -0x1

    sub-int/2addr v1, v0

    aput v1, v6, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    :cond_3
    mul-int/lit8 v1, v5, 0x2

    .line 213
    add-int/lit8 v2, v5, -0x1

    move v8, v7

    :goto_3
    const/4 v0, 0x2

    if-le v5, v0, :cond_8

    .line 215
    add-int/lit8 v9, v1, -0x1

    if-lez v1, :cond_0

    .line 222
    if-gt v5, v2, :cond_4

    move v2, v7

    .line 225
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 226
    if-gt v5, v3, :cond_5

    move v3, v7

    .line 229
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 230
    if-gt v5, v4, :cond_6

    move v4, v7

    :cond_6
    move-object v0, p0

    move-object v1, p1

    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/a/h/a;->a(Ljava/util/ArrayList;IIII[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    aget v0, v6, v2

    .line 239
    aget v1, v6, v3

    .line 240
    aget v2, v6, v4

    .line 243
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v8, 0x1

    .line 250
    add-int/lit8 v1, v3, 0x1

    move v2, v3

    :goto_4
    if-ge v1, v5, :cond_7

    .line 251
    aget v4, v6, v1

    aput v4, v6, v2

    .line 250
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 253
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 256
    mul-int/lit8 v1, v5, 0x2

    :goto_5
    move v2, v3

    move v8, v0

    .line 258
    goto :goto_3

    .line 260
    :cond_8
    const/4 v7, 0x1

    goto :goto_0

    :cond_9
    move v0, v8

    move v1, v9

    goto :goto_5
.end method

.method private static b(Ljava/util/ArrayList;)F
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 116
    const/4 v2, 0x0

    .line 118
    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 119
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v5, v0, Lcom/acmeaom/android/a/g/m;->d:F

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->e:F

    mul-float/2addr v5, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v6, v0, Lcom/acmeaom/android/a/g/m;->d:F

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->e:F

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    add-float v2, v3, v0

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    const/high16 v0, 0x3f000000

    mul-float/2addr v0, v3

    return v0
.end method

.method private b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    .line 58
    new-instance v3, Lcom/acmeaom/android/a/g/m;

    iget-object v4, v0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v0, v0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {v3, v4, v0}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/a/h/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method
