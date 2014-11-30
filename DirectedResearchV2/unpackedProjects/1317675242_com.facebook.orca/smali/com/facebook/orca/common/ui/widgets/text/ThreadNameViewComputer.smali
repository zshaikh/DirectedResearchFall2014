.class public Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;
.super Ljava/lang/Object;
.source "ThreadNameViewComputer.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/ThreadDisplayCache;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    .line 47
    return-void
.end method

.method private a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/text/TextPaint;",
            "I",
            "Landroid/text/Layout$Alignment;",
            ")",
            "Landroid/text/StaticLayout;"
        }
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 198
    if-nez v0, :cond_1

    .line 199
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v0, 0x0

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x4000

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v4, p2

    move-object/from16 v6, p4

    move v11, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    goto :goto_0
.end method

.method private a(Landroid/text/TextPaint;Ljava/lang/String;I)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 212
    int-to-float v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 213
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;III)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/TextPaint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;"
        }
    .end annotation

    .prologue
    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextPaint;

    .line 103
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Landroid/text/TextPaint;Ljava/lang/String;I)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_0

    .line 175
    :goto_0
    return-object v4

    .line 109
    :cond_1
    if-gez p5, :cond_a

    .line 110
    const v4, 0x7fffffff

    .line 114
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    .line 115
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 116
    new-instance v4, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 123
    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v7, v6

    .line 124
    int-to-float v4, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 125
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v8

    .line 127
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/Iterators;->f(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v9

    move/from16 v10, p4

    .line 128
    :goto_2
    if-lez v10, :cond_9

    if-lez v5, :cond_9

    cmpl-float v11, v4, v6

    if-ltz v11, :cond_9

    .line 129
    add-int/lit8 v10, v10, -0x1

    .line 130
    sub-float/2addr v4, v6

    .line 131
    move/from16 v0, p3

    int-to-float v0, v0

    move v11, v0

    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    move v11, v5

    move/from16 v5, v16

    .line 133
    :goto_3
    invoke-interface {v9}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 134
    invoke-interface {v9}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 136
    const/4 v13, 0x1

    if-le v11, v13, :cond_3

    .line 137
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 142
    :goto_4
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 143
    if-lez v10, :cond_4

    cmpl-float v15, v4, v6

    if-ltz v15, :cond_4

    .line 144
    cmpg-float v15, v14, v5

    if-gez v15, :cond_5

    .line 145
    invoke-interface {v9}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 146
    add-int/lit8 v11, v11, -0x1

    .line 147
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_5
    sub-float/2addr v5, v14

    .line 172
    goto :goto_3

    :cond_3
    move-object/from16 v13, p2

    .line 139
    goto :goto_4

    .line 152
    :cond_4
    if-lez v11, :cond_7

    .line 153
    sub-float v15, v5, v14

    cmpg-float v15, v15, v7

    if-gez v15, :cond_6

    .line 154
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v11

    .line 174
    goto :goto_2

    .line 157
    :cond_6
    invoke-interface {v9}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 158
    add-int/lit8 v11, v11, -0x1

    .line 159
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 162
    :cond_7
    cmpg-float v15, v5, v14

    if-gez v15, :cond_8

    .line 163
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 165
    :cond_8
    invoke-interface {v9}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 166
    add-int/lit8 v11, v11, -0x1

    .line 167
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 175
    :cond_9
    new-instance v4, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_a
    move/from16 v4, p5

    goto/16 :goto_1
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    const v1, 0x7f0a002b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 231
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 232
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    move v0, v2

    .line 233
    :goto_0
    if-lez v1, :cond_0

    .line 234
    mul-int/lit8 v0, v0, 0xa

    .line 235
    add-int/lit8 v0, v0, 0x8

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_0
    return v0
.end method


# virtual methods
.method a(Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/TextPaint;",
            ">;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "I",
            "Landroid/text/Layout$Alignment;",
            "II)",
            "Landroid/text/Layout;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    .line 68
    if-nez p2, :cond_0

    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 74
    invoke-direct {p0, v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move v5, p6

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Ljava/util/List;III)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    move-result-object v0

    .line 79
    iget-object v1, v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->a:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0
.end method
