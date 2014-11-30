.class public Lcom/dolphin/browser/launcher/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "DropTargetBar.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/w;


# static fields
.field private static final c:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private a:Lcom/g/a/s;

.field private b:Lcom/g/a/s;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/ButtonDropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/dolphin/browser/launcher/DropTargetBar;->c:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    .line 53
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->h:Z

    .line 54
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->j:Z

    .line 64
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/ButtonDropTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    instance-of v0, p1, Lcom/dolphin/browser/launcher/ButtonDropTarget;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Lcom/dolphin/browser/launcher/ButtonDropTarget;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void

    .line 111
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 114
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/g/a/s;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/dolphin/browser/launcher/DropTargetBar;->c:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 84
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 85
    new-instance v0, Lcom/dolphin/browser/launcher/ak;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/launcher/ak;-><init>(Lcom/dolphin/browser/launcher/DropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/g/a/s;->a(Lcom/g/a/b;)V

    .line 93
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 106
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    if-nez v0, :cond_1

    .line 233
    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v1

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_1
    aput v0, v4, v2

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v0

    .line 235
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    new-array v5, v6, [Lcom/g/a/ai;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/g/a/s;->a(Ljava/lang/Object;[Lcom/g/a/ai;)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Lcom/g/a/s;Landroid/view/View;)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    if-nez v0, :cond_3

    .line 242
    const-string v3, "translationY"

    new-array v4, v6, [F

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    aput v0, v4, v1

    aput v7, v4, v2

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v0

    .line 244
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    new-array v5, v6, [Lcom/g/a/ai;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/g/a/s;->a(Ljava/lang/Object;[Lcom/g/a/ai;)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Lcom/g/a/s;Landroid/view/View;)V

    move v0, v2

    .line 248
    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 235
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 244
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->h:Z

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->k:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->j()V

    .line 254
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Landroid/view/View;Z)V

    .line 170
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    .line 174
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 192
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    .line 193
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;

    .line 195
    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V

    .line 196
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d()Z

    move-result v5

    .line 197
    if-eqz v5, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 199
    if-eqz v1, :cond_1

    const-string v6, "showInPortrait"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    invoke-virtual {v0, v7}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setVisibility(I)V

    goto :goto_1

    :cond_0
    move v1, v3

    .line 193
    goto :goto_0

    .line 202
    :cond_1
    if-nez v1, :cond_2

    const-string v6, "showInLandscape"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    invoke-virtual {v0, v7}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setVisibility(I)V

    .line 207
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    .line 208
    iget-object v5, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->k:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/bk;->q()Lcom/dolphin/browser/launcher/v;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ai;)V

    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {v0, v7}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_4
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    if-eqz v0, :cond_5

    .line 215
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/DropTargetBar;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    .line 217
    :cond_5
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->b(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 220
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->b(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 225
    :cond_6
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/v;)V
    .locals 3

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->k:Lcom/dolphin/browser/launcher/bk;

    .line 68
    invoke-virtual {p2, p0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/w;)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;

    .line 70
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(Lcom/dolphin/browser/launcher/DropTargetBar;)V

    .line 72
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->j:Z

    .line 97
    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    .line 98
    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    .line 99
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    if-eqz v0, :cond_2

    .line 259
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->h:Z

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->b(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->a:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->m()V

    .line 263
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->b(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->b:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->m()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->k:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->k()V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;

    .line 269
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a()V

    .line 270
    iget-object v2, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->k:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bk;->q()Lcom/dolphin/browser/launcher/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/ai;)V

    goto :goto_0

    .line 272
    :cond_1
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->i:Z

    .line 277
    :cond_2
    :goto_1
    return-void

    .line 274
    :cond_3
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->h:Z

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 124
    sget v0, Lcom/dolphin/browser/launcher/R$id;->drop_target_bar:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/DropTargetBar;->b()V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DropTargetBar;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/g/c/a;->a(Landroid/view/View;F)V

    .line 129
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 281
    invoke-static {p1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 283
    return-void
.end method
