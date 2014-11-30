.class public Lcom/dolphin/browser/ui/launcher/Folder;
.super Lcom/dolphin/browser/launcher/Folder;
.source "Folder.java"


# instance fields
.field protected p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

.field q:Z

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->q:Z

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->s:Landroid/graphics/Rect;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/Folder;->setFocusableInTouchMode(Z)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/Folder;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/Folder;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->i()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/launcher/Folder;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/be;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/launcher/Folder;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/bk;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/launcher/Folder;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    return p1
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/g/a/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->l:Lcom/g/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/ui/launcher/Folder;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->r()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/be;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/bk;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/g/a/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->l:Lcom/g/a/a;

    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    const v1, 0x3f4ccccd

    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p0, v1}, Lcom/g/c/a;->e(Landroid/view/View;F)V

    .line 180
    invoke-static {p0, v1}, Lcom/g/c/a;->f(Landroid/view/View;F)V

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/g/c/a;->a(Landroid/view/View;F)V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/Folder;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V

    .line 106
    if-eq p1, p0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/launcher/be;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p2, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 109
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/bi;->b(I)V

    .line 110
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 111
    const-string v2, "flags"

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected a(Lcom/dolphin/browser/launcher/be;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/be;)V

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->u()V

    .line 68
    return-void
.end method

.method protected b(I)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->j:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 252
    add-int/lit8 p1, p1, 0x1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 256
    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 257
    sget-object v3, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v3, 0x7f0c0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 258
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 259
    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v1, v2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v5

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/CellLayout;->c()I

    move-result v1

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/CellLayout;->d()I

    move-result v2

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/CellLayout;->e()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/CellLayout;->f()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/CellLayout;->g()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/CellLayout;->a(IIIII)V

    .line 265
    return-void
.end method

.method public h()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    const-string v0, "Fps Of Open Folder Animation"

    invoke-static {v0, v5, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 119
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->v()V

    .line 121
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->o()V

    .line 124
    const-string v0, "alpha"

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v0

    .line 125
    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v1, v2}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v1

    .line 126
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v2, v3}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v2

    .line 127
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/g/a/ai;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;[Lcom/g/a/ai;)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->l:Lcom/g/a/a;

    .line 130
    new-instance v1, Lcom/dolphin/browser/ui/launcher/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/launcher/c;-><init>(Lcom/dolphin/browser/ui/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 146
    iget v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 147
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 148
    invoke-static {p0}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;)V

    .line 149
    new-instance v1, Lcom/dolphin/browser/ui/launcher/d;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/ui/launcher/d;-><init>(Lcom/dolphin/browser/ui/launcher/Folder;Lcom/g/a/a;)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public j()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->q:Z

    if-nez v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->r()V

    .line 207
    invoke-static {p0, v4, v8}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 208
    iput v4, p0, Lcom/dolphin/browser/ui/launcher/Folder;->f:I

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "alpha"

    new-array v1, v5, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v0, v1}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v0

    .line 213
    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v1, v2}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v1

    .line 214
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v2, v3}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v2

    .line 215
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/g/a/ai;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;[Lcom/g/a/ai;)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->l:Lcom/g/a/a;

    .line 218
    new-instance v1, Lcom/dolphin/browser/ui/launcher/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/launcher/e;-><init>(Lcom/dolphin/browser/ui/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 234
    iget v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 235
    invoke-static {p0, v7, v8}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 236
    invoke-static {p0}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;)V

    .line 237
    new-instance v1, Lcom/dolphin/browser/ui/launcher/f;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/ui/launcher/f;-><init>(Lcom/dolphin/browser/ui/launcher/Folder;Lcom/g/a/a;)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected o()V
    .locals 10

    .prologue
    const/high16 v3, -0x80000000

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ad;

    .line 277
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bk;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bk;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 280
    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/ui/launcher/Folder;->measure(II)V

    .line 281
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getMeasuredWidth()I

    move-result v3

    .line 282
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getMeasuredHeight()I

    move-result v4

    .line 284
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v5, p0, Lcom/dolphin/browser/ui/launcher/Folder;->s:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 286
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 288
    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    .line 289
    div-int/lit8 v1, v4, 0x2

    sub-int v6, v2, v1

    .line 292
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    check-cast v1, Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/g;->J()Lcom/dolphin/browser/promoted/PromotionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/PromotionView;->getHeight()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 300
    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 302
    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 306
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 307
    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    .line 309
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 310
    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 313
    :cond_2
    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v5, v1

    add-int/2addr v5, v7

    .line 314
    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v2

    add-int/2addr v6, v7

    .line 315
    int-to-float v5, v5

    invoke-static {p0, v5}, Lcom/g/c/a;->b(Landroid/view/View;F)V

    .line 316
    int-to-float v5, v6

    invoke-static {p0, v5}, Lcom/g/c/a;->c(Landroid/view/View;F)V

    .line 318
    iput v3, v0, Lcom/dolphin/browser/launcher/ad;->width:I

    .line 319
    iput v4, v0, Lcom/dolphin/browser/launcher/ad;->height:I

    .line 320
    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->a:I

    .line 321
    iput v2, v0, Lcom/dolphin/browser/launcher/ad;->b:I

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/dolphin/browser/launcher/Folder;->onAttachedToWindow()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->q:Z

    .line 189
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/dolphin/browser/launcher/Folder;->onDetachedFromWindow()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->q:Z

    .line 195
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/dolphin/browser/launcher/Folder;->onFinishInflate()V

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->r:Landroid/view/View;

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08023d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/MyScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->setScrollContainer(Z)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->setVisibility(I)V

    .line 172
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/Folder;->onMeasure(II)V

    .line 173
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->p:Lcom/dolphin/browser/ui/launcher/MyScrollView;

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a(I)V

    goto :goto_0
.end method

.method public u()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->r:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02023a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a002b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/FolderEditText;->setTextColor(I)V

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0095

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/FolderEditText;->setHighlightColor(I)V

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/FolderEditText;->getPaddingTop()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/FolderEditText;->getPaddingRight()I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/FolderEditText;->getPaddingLeft()I

    move-result v3

    .line 88
    iget-object v4, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/FolderEditText;->getPaddingBottom()I

    move-result v4

    .line 89
    iget-object v5, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    sget-object v6, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v6, 0x7f02023b

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/launcher/FolderEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v5, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v5, v3, v1, v2, v4}, Lcom/dolphin/browser/launcher/FolderEditText;->setPadding(IIII)V

    .line 93
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/dolphin/browser/launcher/FolderEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    invoke-static {p0}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;)V

    .line 100
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v7, v7, v0, v7}, Lcom/dolphin/browser/launcher/FolderEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
