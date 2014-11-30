.class public Ldolphin/webkit/ey;
.super Ljava/lang/Object;
.source "OverScrollGlow.java"


# instance fields
.field private a:Ldolphin/webkit/WebViewClassic;

.field private b:Ldolphin/webkit/bv;

.field private c:Ldolphin/webkit/bv;

.field private d:Ldolphin/webkit/bv;

.field private e:Ldolphin/webkit/bv;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    .line 41
    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    .line 42
    new-instance v1, Ldolphin/webkit/bv;

    invoke-direct {v1, v0}, Ldolphin/webkit/bv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    .line 43
    new-instance v1, Ldolphin/webkit/bv;

    invoke-direct {v1, v0}, Ldolphin/webkit/bv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    .line 44
    new-instance v1, Ldolphin/webkit/bv;

    invoke-direct {v1, v0}, Ldolphin/webkit/bv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    .line 45
    new-instance v1, Ldolphin/webkit/bv;

    invoke-direct {v1, v0}, Ldolphin/webkit/bv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    .line 46
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Ldolphin/webkit/ey;->f:I

    .line 106
    iput p2, p0, Ldolphin/webkit/ey;->g:I

    .line 107
    return-void
.end method

.method public a(IIIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v0

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v0

    if-ne p4, v0, :cond_4

    .line 64
    if-lez p5, :cond_1

    .line 65
    iget v0, p0, Ldolphin/webkit/ey;->f:I

    add-int/2addr v0, p3

    .line 66
    if-gez v0, :cond_5

    .line 67
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    iget v1, p0, Ldolphin/webkit/ey;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->j()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(F)V

    .line 68
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 77
    :cond_0
    :goto_0
    iput v3, p0, Ldolphin/webkit/ey;->f:I

    .line 80
    :cond_1
    if-gtz p6, :cond_2

    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 81
    :cond_2
    iget v0, p0, Ldolphin/webkit/ey;->g:I

    add-int/2addr v0, p4

    .line 82
    if-gez v0, :cond_6

    .line 83
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    iget v1, p0, Ldolphin/webkit/ey;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->k()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(F)V

    .line 84
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 93
    :cond_3
    :goto_1
    iput v3, p0, Ldolphin/webkit/ey;->g:I

    .line 96
    :cond_4
    return-void

    .line 71
    :cond_5
    if-le v0, p5, :cond_0

    .line 72
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    iget v1, p0, Ldolphin/webkit/ey;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->j()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(F)V

    .line 73
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    goto :goto_0

    .line 87
    :cond_6
    if-le v0, p6, :cond_3

    .line 88
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    iget v1, p0, Ldolphin/webkit/ey;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->k()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(F)V

    .line 89
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v2

    .line 157
    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v3

    .line 158
    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->j()I

    move-result v4

    .line 159
    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->k()I

    move-result v5

    .line 162
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 165
    int-to-float v0, v2

    iget-object v7, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v7}, Ldolphin/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0, v4, v5}, Ldolphin/webkit/bv;->a(II)V

    .line 167
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0, p1}, Ldolphin/webkit/bv;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 168
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 170
    :goto_0
    iget-object v6, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v6}, Ldolphin/webkit/bv;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 173
    neg-int v7, v4

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v8}, Ldolphin/webkit/WebViewClassic;->V()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    const/high16 v7, 0x43340000

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    iget-object v7, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v7, v4, v5}, Ldolphin/webkit/bv;->a(II)V

    .line 177
    iget-object v7, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v7, p1}, Ldolphin/webkit/bv;->a(Landroid/graphics/Canvas;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 178
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 180
    :cond_0
    iget-object v6, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v6}, Ldolphin/webkit/bv;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 183
    const/high16 v7, 0x43870000

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 184
    neg-int v7, v5

    sub-int/2addr v7, v3

    int-to-float v7, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget-object v1, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v1, v5, v4}, Ldolphin/webkit/bv;->a(II)V

    .line 186
    iget-object v1, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v1, p1}, Ldolphin/webkit/bv;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 187
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 189
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v1}, Ldolphin/webkit/bv;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 192
    const/high16 v6, 0x42b40000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 193
    int-to-float v3, v3

    iget-object v6, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v6}, Ldolphin/webkit/WebViewClassic;->U()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v2, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v2, v5, v4}, Ldolphin/webkit/bv;->a(II)V

    .line 196
    iget-object v2, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v2, p1}, Ldolphin/webkit/bv;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 197
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 199
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 215
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 216
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 217
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 218
    return-void
.end method

.method public b(IIIIII)V
    .locals 2

    .prologue
    .line 120
    if-gtz p6, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    if-gez p2, :cond_3

    if-ltz p4, :cond_3

    .line 122
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    iget-object v1, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->u:Ldolphin/webkit/ez;

    invoke-virtual {v1}, Ldolphin/webkit/ez;->d()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(I)V

    .line 123
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 134
    :cond_1
    :goto_0
    if-lez p5, :cond_2

    .line 135
    if-gez p1, :cond_4

    if-ltz p3, :cond_4

    .line 136
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    iget-object v1, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->u:Ldolphin/webkit/ez;

    invoke-virtual {v1}, Ldolphin/webkit/ez;->d()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(I)V

    .line 137
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    .line 147
    :cond_2
    :goto_1
    return-void

    .line 126
    :cond_3
    if-le p2, p6, :cond_1

    if-gt p4, p6, :cond_1

    .line 127
    iget-object v0, p0, Ldolphin/webkit/ey;->c:Ldolphin/webkit/bv;

    iget-object v1, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->u:Ldolphin/webkit/ez;

    invoke-virtual {v1}, Ldolphin/webkit/ez;->d()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(I)V

    .line 128
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Ldolphin/webkit/ey;->b:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    goto :goto_0

    .line 140
    :cond_4
    if-le p1, p5, :cond_2

    if-gt p3, p5, :cond_2

    .line 141
    iget-object v0, p0, Ldolphin/webkit/ey;->e:Ldolphin/webkit/bv;

    iget-object v1, p0, Ldolphin/webkit/ey;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->u:Ldolphin/webkit/ez;

    invoke-virtual {v1}, Ldolphin/webkit/ez;->d()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/bv;->a(I)V

    .line 142
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Ldolphin/webkit/ey;->d:Ldolphin/webkit/bv;

    invoke-virtual {v0}, Ldolphin/webkit/bv;->b()V

    goto :goto_1
.end method
