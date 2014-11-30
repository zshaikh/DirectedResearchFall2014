.class public Lcom/dolphin/browser/vg/ui/SwitcherView;
.super Landroid/view/View;
.source "SwitcherView.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/text/TextPaint;

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/content/Context;

.field private s:Lcom/dolphin/browser/vg/ui/c;

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 54
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 55
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    .line 56
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 58
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->o:I

    .line 59
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->p:I

    .line 60
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->q:I

    .line 62
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    .line 209
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->t:I

    .line 303
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 304
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    .line 337
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 54
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 55
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    .line 56
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 58
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->o:I

    .line 59
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->p:I

    .line 60
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->q:I

    .line 62
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    .line 209
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->t:I

    .line 303
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 304
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    .line 337
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 54
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 55
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    .line 56
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 58
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->o:I

    .line 59
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->p:I

    .line 60
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->q:I

    .line 62
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    .line 209
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->t:I

    .line 303
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 304
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    .line 337
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/SwitcherView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->e:Landroid/graphics/Rect;

    .line 215
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    .line 216
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v0, v3

    .line 218
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v2, v1

    .line 219
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->u:I

    .line 220
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->u:I

    rsub-int v0, v0, 0xff

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->v:I

    .line 221
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->u:I

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->v:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->t:I

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->invalidate()V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->s:Lcom/dolphin/browser/vg/ui/c;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->s:Lcom/dolphin/browser/vg/ui/c;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/vg/ui/c;->a(I)V

    .line 79
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getPaddingLeft()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getPaddingRight()I

    move-result v1

    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getPaddingTop()I

    move-result v2

    .line 178
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getPaddingBottom()I

    move-result v3

    .line 180
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {v4, v5, v5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 184
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    sub-int v6, p1, v1

    iget-object v7, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    iget v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    if-nez v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    :goto_0
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 194
    add-int v4, v0, v1

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    .line 195
    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->h:Landroid/graphics/Rect;

    iget v6, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v4, v7, v4

    invoke-virtual {v5, v6, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->i:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v1, v5, v1

    iget v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    sub-int/2addr v1, v5

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    return-void

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(Landroid/content/Context;)Landroid/text/TextPaint;

    .line 98
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02030d

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    .line 100
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02030e

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->e:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->h:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->i:Landroid/graphics/Rect;

    .line 109
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->r:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->a:I

    .line 112
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->c()V

    .line 259
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b()V

    .line 260
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a()V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/SwitcherView;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(I)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/text/TextPaint;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 119
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0158

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 120
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 122
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0678

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->o:I

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0679

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->p:I

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->q:I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 226
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    sub-int v3, v0, v1

    .line 227
    iget-object v4, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    .line 228
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    .line 229
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    .line 230
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 231
    if-nez v0, :cond_0

    move-object v0, v1

    .line 233
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_1

    .line 234
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    :goto_1
    return-void

    :cond_0
    move-object v0, v2

    .line 231
    goto :goto_0

    .line 235
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-le v1, v5, :cond_2

    .line 236
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 238
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 345
    iput p1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->A:I

    .line 346
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    sub-int/2addr v0, v1

    .line 347
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->e()I

    move-result v1

    .line 349
    if-nez p1, :cond_1

    .line 350
    if-lez v0, :cond_0

    .line 351
    neg-int v0, v0

    .line 362
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0xc8

    div-int v1, v2, v1

    .line 363
    iget v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iput v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->D:I

    .line 364
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->C:I

    .line 365
    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->B:I

    .line 366
    if-eqz v1, :cond_3

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->z:J

    .line 372
    :goto_1
    return-void

    .line 353
    :cond_0
    add-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0

    .line 356
    :cond_1
    if-ltz v0, :cond_2

    .line 357
    sub-int v0, v1, v0

    goto :goto_0

    .line 359
    :cond_2
    neg-int v0, v0

    goto :goto_0

    .line 370
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->d()V

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 272
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0678

    .line 275
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->i:Landroid/graphics/Rect;

    .line 276
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->o:I

    .line 289
    :goto_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v0, v4, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 290
    iget-object v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 291
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    .line 292
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000

    div-float/2addr v1, v4

    sub-float v1, v5, v1

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v3

    .line 294
    iget-object v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0679

    .line 281
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->h:Landroid/graphics/Rect;

    .line 282
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->p:I

    goto :goto_1

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(II)Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->z:J

    sub-long/2addr v0, v2

    .line 247
    long-to-float v0, v0

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->C:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 248
    const/high16 v0, 0x3f800000

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->d()V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->B:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    goto :goto_1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    return-void
.end method

.method private c(II)Z
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 333
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    .line 308
    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 309
    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    .line 310
    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 311
    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 312
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 313
    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->A:I

    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 314
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->s:Lcom/dolphin/browser/vg/ui/c;

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Lcom/dolphin/browser/vg/ui/b;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/vg/ui/b;-><init>(Lcom/dolphin/browser/vg/ui/SwitcherView;I)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->post(Ljava/lang/Runnable;)Z

    .line 326
    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 383
    iget v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iget v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_0

    iget v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iget v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    sub-int/2addr v2, v3

    neg-int v1, v1

    if-ge v2, v1, :cond_2

    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()I
    .locals 3

    .prologue
    .line 388
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 389
    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    iget v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    :cond_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 394
    :cond_1
    :goto_0
    return v0

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    if-ne p1, v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(I)V

    goto :goto_0

    .line 137
    :cond_1
    iput p1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->j:I

    .line 138
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/vg/ui/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->s:Lcom/dolphin/browser/vg/ui/c;

    .line 72
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->c(Landroid/graphics/Canvas;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(Landroid/graphics/Canvas;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/graphics/Canvas;)V

    .line 204
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->invalidate()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 170
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(II)V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 146
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 407
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->y:Z

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return v5

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 413
    iget-boolean v3, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 414
    if-nez v0, :cond_3

    .line 415
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(II)Z

    move-result v0

    .line 416
    if-eqz v0, :cond_2

    .line 417
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/view/MotionEvent;)V

    .line 418
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 419
    iput v2, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    .line 420
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 426
    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->w:Z

    .line 456
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->invalidate()V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    .line 423
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->l:I

    .line 424
    iget v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    goto :goto_1

    .line 427
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 428
    if-eqz v3, :cond_1

    .line 429
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/vg/ui/SwitcherView;->c(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    if-eqz v0, :cond_5

    .line 430
    :cond_4
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 431
    iput-boolean v5, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    goto :goto_2

    .line 433
    :cond_5
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    goto :goto_2

    .line 436
    :cond_6
    if-ne v0, v5, :cond_8

    .line 437
    if-eqz v3, :cond_7

    .line 438
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/view/MotionEvent;)V

    .line 439
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    if-eqz v0, :cond_1

    .line 440
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    .line 441
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(I)V

    goto :goto_2

    .line 444
    :cond_7
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/SwitcherView;->b(I)V

    goto :goto_2

    .line 446
    :cond_8
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 447
    if-eqz v3, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Landroid/view/MotionEvent;)V

    .line 449
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->x:Z

    if-eqz v0, :cond_9

    .line 450
    iput v1, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    goto :goto_2

    .line 452
    :cond_9
    iget v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->k:I

    iput v0, p0, Lcom/dolphin/browser/vg/ui/SwitcherView;->m:I

    goto :goto_2
.end method
