.class public Lcom/dolphin/browser/f/a/a;
.super Ljava/lang/Object;
.source "ColorAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/dolphin/browser/f/a/l;

    invoke-direct {v0}, Lcom/dolphin/browser/f/a/l;-><init>()V

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/f/a/a;->a(Landroid/graphics/Bitmap;Lcom/dolphin/browser/f/a/k;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;IILcom/dolphin/browser/f/a/k;)I
    .locals 15

    .prologue
    .line 79
    const/4 v9, -0x1

    .line 81
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v9

    .line 85
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 87
    if-eqz v4, :cond_0

    if-eqz v8, :cond_0

    .line 90
    mul-int v1, v4, v8

    const/16 v2, 0x100

    if-le v1, v2, :cond_3

    .line 91
    const/16 v1, 0x10

    if-le v4, v1, :cond_2

    .line 92
    add-int/lit8 v1, v4, -0x10

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L

    div-double/2addr v1, v3

    double-to-int v5, v1

    .line 93
    const/16 v4, 0x10

    .line 95
    :cond_2
    const/16 v1, 0x10

    if-le v8, v1, :cond_3

    .line 96
    add-int/lit8 v1, v8, -0x10

    int-to-double v1, v1

    const-wide/high16 v6, 0x4000000000000000L

    div-double/2addr v1, v6

    double-to-int v6, v1

    .line 97
    const/16 v8, 0x10

    .line 100
    :cond_3
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 101
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 103
    new-instance v10, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 106
    new-instance v3, Lcom/dolphin/browser/f/a/j;

    invoke-direct {v3}, Lcom/dolphin/browser/f/a/j;-><init>()V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 110
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 111
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/f/a/j;

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v3, 0x0

    move v6, v3

    move v3, v5

    :goto_3
    const/16 v5, 0xa

    if-ge v6, v5, :cond_14

    .line 116
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8}, Lcom/dolphin/browser/f/a/k;->a(II)I

    move-result v3

    .line 117
    aget v3, v2, v3

    .line 118
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 119
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 120
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 124
    const/4 v5, 0x1

    .line 125
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/f/a/j;

    .line 126
    if-ne v3, v1, :cond_7

    move v3, v5

    .line 137
    :goto_4
    if-eqz v3, :cond_8

    .line 138
    invoke-virtual {v1, v11, v12, v13}, Lcom/dolphin/browser/f/a/j;->a(III)V

    move v1, v3

    .line 144
    :goto_5
    if-nez v1, :cond_9

    .line 145
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {v3, v11, v12, v13}, Lcom/dolphin/browser/f/a/j;->b(III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    const/4 v3, 0x0

    .line 131
    goto :goto_4

    .line 115
    :cond_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    .line 150
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 156
    :cond_a
    const/4 v3, 0x0

    .line 157
    const/4 v1, 0x0

    move v7, v1

    .line 158
    :goto_6
    const/16 v1, 0x32

    if-ge v7, v1, :cond_e

    if-nez v3, :cond_e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 162
    const/4 v1, 0x0

    move v3, v1

    :goto_7
    array-length v1, v2

    if-ge v3, v1, :cond_c

    .line 163
    aget v1, v2, v3

    .line 164
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 165
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 166
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 168
    const v6, 0x7fffffff

    .line 169
    const/4 v4, 0x0

    .line 172
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/f/a/j;

    .line 173
    invoke-virtual {v1, v8, v11, v12}, Lcom/dolphin/browser/f/a/j;->d(III)I

    move-result v5

    .line 174
    if-ge v5, v6, :cond_12

    move v4, v5

    :goto_9
    move v6, v4

    move-object v4, v1

    .line 178
    goto :goto_8

    .line 180
    :cond_b
    invoke-virtual {v4, v8, v11, v12}, Lcom/dolphin/browser/f/a/j;->c(III)V

    .line 162
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    .line 185
    :cond_c
    const/4 v1, 0x1

    .line 186
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/f/a/j;

    .line 187
    invoke-virtual {v1}, Lcom/dolphin/browser/f/a/j;->c()Z

    move-result v5

    and-int/2addr v3, v5

    .line 188
    invoke-virtual {v1}, Lcom/dolphin/browser/f/a/j;->b()V

    goto :goto_a

    .line 158
    :cond_d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_6

    .line 194
    :cond_e
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v9

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/f/a/j;

    .line 201
    invoke-virtual {v1}, Lcom/dolphin/browser/f/a/j;->a()[I

    move-result-object v4

    .line 202
    const/4 v5, 0x0

    aget v5, v4, v5

    .line 203
    const/4 v6, 0x1

    aget v6, v4, v6

    .line 204
    const/4 v7, 0x2

    aget v4, v4, v7

    .line 210
    add-int v7, v5, v6

    add-int/2addr v7, v4

    .line 212
    move/from16 v0, p3

    if-ge v7, v0, :cond_10

    move/from16 v0, p2

    if-le v7, v0, :cond_10

    .line 215
    const/16 v1, 0xff

    invoke-static {v1, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    :cond_f
    move v9, v2

    .line 225
    goto/16 :goto_0

    .line 217
    :cond_10
    const/4 v7, 0x0

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v1, v7, :cond_11

    .line 221
    const/16 v1, 0xff

    invoke-static {v1, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_c
    move v2, v1

    .line 223
    goto :goto_b

    :cond_11
    move v1, v2

    goto :goto_c

    :cond_12
    move-object v1, v4

    move v4, v6

    goto :goto_9

    :cond_13
    move v3, v5

    goto/16 :goto_4

    :cond_14
    move v1, v3

    goto/16 :goto_5
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/dolphin/browser/f/a/k;)I
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0x64

    const/16 v1, 0x258

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/dolphin/browser/f/a/a;->a(Landroid/graphics/Bitmap;IILcom/dolphin/browser/f/a/k;)I

    move-result v0

    return v0
.end method
