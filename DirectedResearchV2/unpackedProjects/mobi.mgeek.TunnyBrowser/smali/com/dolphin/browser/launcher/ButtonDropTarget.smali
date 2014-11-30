.class public Lcom/dolphin/browser/launcher/ButtonDropTarget;
.super Landroid/widget/FrameLayout;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/ai;


# static fields
.field private static e:I


# instance fields
.field protected a:Lcom/dolphin/browser/launcher/bk;

.field protected b:Z

.field protected c:Lcom/dolphin/browser/launcher/DropTargetBar;

.field protected d:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xc8

    sput v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private a(II)Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a:Lcom/dolphin/browser/launcher/bk;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget-object v2, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 143
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 144
    add-int v4, v3, v2

    .line 146
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 147
    add-int v6, v5, v0

    .line 149
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    sub-int v2, p1, v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 153
    sub-int v0, p2, v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 154
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 156
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->b:Z

    .line 95
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/DropTargetBar;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->c:Lcom/dolphin/browser/launcher/DropTargetBar;

    .line 161
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->b:Z

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->c()V

    .line 91
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a:Lcom/dolphin/browser/launcher/bk;

    .line 53
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;[I)V

    .line 127
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/aj;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setSelected(Z)V

    .line 103
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/aj;)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->g(Lcom/dolphin/browser/launcher/aj;)V

    .line 69
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->setSelected(Z)V

    .line 107
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/aj;)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->b()V

    .line 74
    return-void
.end method

.method public d(Lcom/dolphin/browser/launcher/aj;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->b:Z

    return v0
.end method

.method public e(Lcom/dolphin/browser/launcher/aj;)V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p1, Lcom/dolphin/browser/launcher/aj;->e:Z

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->c()V

    .line 86
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/dolphin/browser/launcher/aj;)Lcom/dolphin/browser/launcher/ai;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g(Lcom/dolphin/browser/launcher/aj;)V
    .locals 17

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a:Lcom/dolphin/browser/launcher/bk;

    .line 165
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 166
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 167
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/ag;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->a(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->c:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/DropTargetBar;->a()V

    .line 171
    new-instance v14, Lcom/dolphin/browser/launcher/b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/dolphin/browser/launcher/b;-><init>(Lcom/dolphin/browser/launcher/ButtonDropTarget;Lcom/dolphin/browser/launcher/aj;)V

    .line 178
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    const/high16 v7, 0x3f800000

    const/high16 v8, 0x3f800000

    const v9, 0x3dcccccd

    const v10, 0x3dcccccd

    sget v11, Lcom/dolphin/browser/launcher/ButtonDropTarget;->e:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v16}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 182
    return-void
.end method

.method protected h(Lcom/dolphin/browser/launcher/aj;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    sget v0, Lcom/dolphin/browser/launcher/R$id;->button_drop_target_text:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->d:Landroid/widget/TextView;

    .line 59
    return-void
.end method
