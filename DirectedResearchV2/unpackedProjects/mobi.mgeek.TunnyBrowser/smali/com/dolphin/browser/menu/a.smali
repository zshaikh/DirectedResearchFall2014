.class public abstract Lcom/dolphin/browser/menu/a;
.super Landroid/widget/FrameLayout;
.source "AbsMenuBarPanel.java"


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Lcom/dolphin/browser/menu/h;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/dolphin/browser/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->b:Z

    .line 45
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->c:Z

    .line 56
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->a:Z

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 114
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/menu/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)Lcom/g/a/a;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/g/a/s;

    invoke-direct {v0}, Lcom/g/a/s;-><init>()V

    .line 67
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 68
    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a([F)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/g/a/s;->a(Ljava/lang/Object;)V

    .line 71
    return-object v0

    .line 69
    nop

    :array_0
    .array-data 4
        0x43c80000
        0x0
    .end array-data
.end method

.method public a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a;->c:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/a;->c:Z

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->b()V

    .line 152
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/a;->a:Z

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->a(Lcom/dolphin/browser/menu/a;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 160
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 163
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/a;->b(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->c()V

    .line 167
    new-instance v0, Lcom/dolphin/browser/menu/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/b;-><init>(Lcom/dolphin/browser/menu/a;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/menu/a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/menu/h;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a;->c:Z

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz p1, :cond_2

    .line 220
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a;->b:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->b:Z

    .line 224
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->d()V

    .line 225
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->k()Lcom/dolphin/browser/menu/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/a;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/menu/a;->f:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/menu/g;->b(Landroid/view/View;Landroid/view/View;)V

    .line 230
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->e()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->d()V

    .line 228
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->g()V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a;->c:Z

    return v0
.end method

.method protected b(Landroid/view/View;)Lcom/g/a/a;
    .locals 5

    .prologue
    .line 76
    new-instance v0, Lcom/g/a/s;

    invoke-direct {v0}, Lcom/g/a/s;-><init>()V

    .line 77
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 78
    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    .line 81
    const/high16 v2, 0x43c80000

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 83
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/g/a/s;->a([F)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/g/a/s;->a(Ljava/lang/Object;)V

    .line 85
    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/dolphin/browser/menu/a;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->f()V

    .line 139
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/a;->a(Z)V

    .line 213
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/a;->a:Z

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/dolphin/browser/menu/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/c;-><init>(Lcom/dolphin/browser/menu/a;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/a;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->b(Lcom/dolphin/browser/menu/a;)V

    .line 260
    :cond_1
    return-void

    .line 252
    :cond_2
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/a;->c:Z

    .line 254
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/a;->b:Z

    goto :goto_0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->b:Z

    .line 270
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->g()V

    .line 275
    return-void
.end method

.method public k()Lcom/dolphin/browser/menu/g;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->g:Lcom/dolphin/browser/menu/g;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/dolphin/browser/menu/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/d;-><init>(Lcom/dolphin/browser/menu/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/a;->g:Lcom/dolphin/browser/menu/g;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->g:Lcom/dolphin/browser/menu/g;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public n()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/menu/a;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0}, Lcom/dolphin/browser/menu/h;->a()I

    move-result v0

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/menu/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/a;->f()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/a;->c:Z

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
