.class public abstract Lcom/dolphin/browser/h/a;
.super Ljava/lang/Object;
.source "LongPressPopListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Z

.field protected d:Landroid/view/WindowManager;

.field protected e:Landroid/view/WindowManager$LayoutParams;

.field protected f:I

.field protected g:Landroid/view/GestureDetector;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Landroid/widget/ImageView;

.field protected n:Lcom/g/a/d;

.field protected o:[I

.field protected p:Z

.field protected q:Lcom/dolphin/browser/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->o:[I

    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/h/a;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/dolphin/browser/h/a;->b:Landroid/view/View;

    .line 73
    iput-boolean p3, p0, Lcom/dolphin/browser/h/a;->c:Z

    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/h/a;->a()V

    .line 76
    invoke-direct {p0}, Lcom/dolphin/browser/h/a;->f()V

    .line 77
    invoke-direct {p0}, Lcom/dolphin/browser/h/a;->g()V

    .line 79
    invoke-static {p0}, Lcom/dolphin/browser/util/at;->a(Lcom/dolphin/browser/ui/OrientationChangedListener;)V

    .line 80
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 283
    :cond_1
    :goto_0
    return v0

    .line 270
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 273
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 274
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 275
    aget v5, v4, v1

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 277
    aget v4, v4, v0

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 280
    if-lt v2, v5, :cond_3

    if-gt v2, v6, :cond_3

    if-lt v3, v4, :cond_3

    if-le v3, v7, :cond_1

    :cond_3
    move v0, v1

    .line 281
    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/h/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->j:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->k:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->l:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->m:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 116
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a1

    goto :goto_0
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 119
    new-instance v0, Lcom/g/a/d;

    invoke-direct {v0}, Lcom/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->n:Lcom/g/a/d;

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    const-string v1, "scaleX"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v10, v11}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    const-string v2, "scaleY"

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v2

    .line 125
    invoke-virtual {v2, v10, v11}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v3, v4}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v10, v11}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 129
    new-array v4, v8, [I

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 131
    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->c:Z

    if-eqz v0, :cond_0

    aget v0, v4, v9

    add-int/lit8 v0, v0, 0x23

    .line 133
    :goto_0
    iget-object v5, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    const-string v6, "translationY"

    new-array v7, v8, [F

    int-to-float v0, v0

    aput v0, v7, v12

    aget v0, v4, v9

    int-to-float v0, v0

    aput v0, v7, v9

    invoke-static {v5, v6, v7}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v10, v11}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 137
    iget-object v4, p0, Lcom/dolphin/browser/h/a;->n:Lcom/g/a/d;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/g/a/a;

    aput-object v1, v5, v12

    aput-object v2, v5, v9

    aput-object v3, v5, v8

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->n:Lcom/g/a/d;

    new-instance v1, Lcom/dolphin/browser/h/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/h/c;-><init>(Lcom/dolphin/browser/h/a;)V

    invoke-virtual {v0, v1}, Lcom/g/a/d;->a(Lcom/g/a/b;)V

    .line 159
    return-void

    .line 131
    :cond_0
    aget v0, v4, v9

    add-int/lit8 v0, v0, -0x23

    goto :goto_0

    .line 120
    nop

    :array_0
    .array-data 4
        0x3f4ccccd
        0x3f800000
    .end array-data

    .line 123
    :array_1
    .array-data 4
        0x3f4ccccd
        0x3f800000
    .end array-data

    .line 126
    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->p:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/h/a;->d:Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 203
    iput-boolean v2, p0, Lcom/dolphin/browser/h/a;->p:Z

    .line 205
    :cond_0
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->o:[I

    aget v0, v0, v5

    aget v2, v1, v5

    if-eq v0, v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->e:Landroid/view/WindowManager$LayoutParams;

    aget v2, v1, v5

    iget-object v3, p0, Lcom/dolphin/browser/h/a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->o:[I

    aget v2, v1, v5

    aput v2, v0, v5

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->o:[I

    aget v0, v0, v4

    aget v2, v1, v4

    if-eq v0, v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/dolphin/browser/h/a;->e:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->c:Z

    if-eqz v0, :cond_2

    aget v0, v1, v4

    iget-object v3, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->o:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 249
    :cond_1
    return-void

    .line 244
    :cond_2
    aget v0, v1, v4

    iget-object v3, p0, Lcom/dolphin/browser/h/a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->d:Landroid/view/WindowManager;

    .line 85
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3eb

    const v4, 0x800300

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/dolphin/browser/h/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/h/a;->f:I

    .line 97
    new-instance v0, Lcom/dolphin/browser/h/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/h/b;-><init>(Lcom/dolphin/browser/h/a;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/h/a;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v1, p0, Lcom/dolphin/browser/h/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v1, p0, Lcom/dolphin/browser/h/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->p:Z

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/dolphin/browser/h/a;->i()V

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/h/a;->b()V

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/h/a;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/dolphin/browser/h/a;->d:Landroid/view/WindowManager;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->n:Lcom/g/a/d;

    invoke-virtual {v0}, Lcom/g/a/d;->a()V

    .line 168
    iput-boolean v3, p0, Lcom/dolphin/browser/h/a;->p:Z

    .line 169
    invoke-virtual {p0}, Lcom/dolphin/browser/h/a;->c()V

    .line 171
    :cond_0
    return v3
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/dolphin/browser/h/a;->h()V

    .line 210
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/dolphin/browser/c/j;

    invoke-direct {v0}, Lcom/dolphin/browser/c/j;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/j;->a()Z

    .line 177
    iget-boolean v0, p0, Lcom/dolphin/browser/h/a;->p:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    invoke-static {v1, p2}, Lcom/dolphin/browser/h/a;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->i:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/dolphin/browser/h/a;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/dolphin/browser/h/a;->d()V

    .line 188
    :cond_1
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/h/a;->h()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->g:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/h/a;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
