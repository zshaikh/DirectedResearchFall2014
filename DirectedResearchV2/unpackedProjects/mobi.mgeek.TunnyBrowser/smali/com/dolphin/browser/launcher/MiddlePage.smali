.class public Lcom/dolphin/browser/launcher/MiddlePage;
.super Landroid/widget/FrameLayout;
.source "MiddlePage.java"


# static fields
.field public static a:I

.field public static b:I

.field private static final c:I


# instance fields
.field private d:Lcom/dolphin/browser/launcher/ca;

.field private e:Lcom/dolphin/browser/launcher/ca;

.field private f:Lcom/dolphin/browser/launcher/Workspace;

.field private g:Landroid/view/GestureDetector;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/dolphin/browser/launcher/cb;

.field private m:Z

.field private n:Z

.field private o:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/dolphin/browser/launcher/MiddlePage;->a:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/dolphin/browser/launcher/MiddlePage;->b:I

    .line 49
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/launcher/MiddlePage;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->m:Z

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->n:Z

    .line 138
    new-instance v0, Lcom/dolphin/browser/launcher/bx;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/bx;-><init>(Lcom/dolphin/browser/launcher/MiddlePage;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->o:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->m:Z

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->n:Z

    .line 138
    new-instance v0, Lcom/dolphin/browser/launcher/bx;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/bx;-><init>(Lcom/dolphin/browser/launcher/MiddlePage;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->o:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 79
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/dolphin/browser/launcher/MiddlePage;->c:I

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    return-object v0
.end method

.method private a(Landroid/view/View;I)Lcom/g/a/an;
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Lcom/g/a/an;->b([I)Lcom/g/a/an;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/dolphin/browser/launcher/bz;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/launcher/bz;-><init>(Lcom/dolphin/browser/launcher/MiddlePage;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 257
    return-object v0
.end method

.method private a(Lcom/dolphin/browser/launcher/ca;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->e(Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    if-eq v0, p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/Workspace;->c(Lcom/dolphin/browser/launcher/ca;)V

    .line 114
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/MiddlePage;->b()V

    .line 115
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/MiddlePage;->invalidate()V

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->l:Lcom/dolphin/browser/launcher/cb;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->l:Lcom/dolphin/browser/launcher/cb;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/cb;->a(Lcom/dolphin/browser/launcher/ca;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->b(Lcom/dolphin/browser/launcher/ca;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/Workspace;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    .line 130
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->d:Lcom/dolphin/browser/launcher/ca;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->c(Lcom/dolphin/browser/launcher/ca;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->d(Lcom/dolphin/browser/launcher/ca;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/ca;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/ca;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->scrollTo(II)V

    .line 136
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/MiddlePage;Lcom/dolphin/browser/launcher/ca;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/ca;)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/launcher/ca;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->e(Lcom/dolphin/browser/launcher/ca;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    if-eq v2, p1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Z)V

    .line 187
    iput-object p1, p0, Lcom/dolphin/browser/launcher/MiddlePage;->e:Lcom/dolphin/browser/launcher/ca;

    .line 188
    sget-object v2, Lcom/dolphin/browser/launcher/ca;->d:Lcom/dolphin/browser/launcher/ca;

    iput-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->d:Lcom/dolphin/browser/launcher/ca;

    .line 189
    new-instance v2, Lcom/g/a/d;

    invoke-direct {v2}, Lcom/g/a/d;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/dolphin/browser/launcher/MiddlePage;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v4, p1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/ca;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Landroid/view/View;I)Lcom/g/a/an;

    move-result-object v3

    .line 191
    iget-object v4, p0, Lcom/dolphin/browser/launcher/MiddlePage;->j:Landroid/view/View;

    iget-object v5, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v5, p1}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/ca;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Landroid/view/View;I)Lcom/g/a/an;

    move-result-object v4

    .line 192
    iget-object v5, p0, Lcom/dolphin/browser/launcher/MiddlePage;->h:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->c(Lcom/dolphin/browser/launcher/ca;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Landroid/view/View;I)Lcom/g/a/an;

    move-result-object v5

    .line 193
    iget-object v6, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/MiddlePage;->d(Lcom/dolphin/browser/launcher/ca;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Landroid/view/View;I)Lcom/g/a/an;

    move-result-object v6

    .line 194
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/g/a/a;

    aput-object v3, v7, v0

    aput-object v4, v7, v1

    const/4 v0, 0x2

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    invoke-virtual {v2, v7}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 195
    new-instance v0, Lcom/dolphin/browser/launcher/by;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/by;-><init>(Lcom/dolphin/browser/launcher/MiddlePage;)V

    invoke-virtual {v2, v0}, Lcom/g/a/d;->a(Lcom/g/a/b;)V

    .line 214
    invoke-virtual {v2}, Lcom/g/a/d;->a()V

    .line 215
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/g/a/d;->b(J)Lcom/g/a/d;

    move v0, v1

    .line 216
    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/launcher/ca;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 224
    :cond_2
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/MiddlePage;)Lcom/dolphin/browser/launcher/ca;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->e:Lcom/dolphin/browser/launcher/ca;

    return-object v0
.end method

.method private d(Lcom/dolphin/browser/launcher/ca;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-eq p1, v1, :cond_0

    .line 236
    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private e(Lcom/dolphin/browser/launcher/ca;)Z
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->m:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Z)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcom/dolphin/browser/launcher/R$id;->workspace:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/Workspace;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->f:Lcom/dolphin/browser/launcher/Workspace;

    .line 85
    sget v0, Lcom/dolphin/browser/launcher/R$id;->workspace_container:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->k:Landroid/view/View;

    .line 86
    sget v0, Lcom/dolphin/browser/launcher/R$id;->normal_view:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->h:Landroid/view/View;

    .line 87
    sget v0, Lcom/dolphin/browser/launcher/R$id;->minimized_view:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->i:Landroid/view/View;

    .line 88
    sget v0, Lcom/dolphin/browser/launcher/R$id;->background_view:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->j:Landroid/view/View;

    .line 89
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/MiddlePage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/MiddlePage;->o:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/MiddlePage;->g:Landroid/view/GestureDetector;

    .line 90
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/launcher/MiddlePage;->setClickable(Z)V

    .line 91
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/MiddlePage;->a(Lcom/dolphin/browser/launcher/ca;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/launcher/MiddlePage;->setFocusableInTouchMode(Z)V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/MiddlePage;->b()V

    .line 126
    return-void
.end method
