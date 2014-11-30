.class public Lcom/dolphin/browser/tablist/bd;
.super Ljava/lang/Object;
.source "ScrollViewPerformanceHelper.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Z

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable$ConstantState;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->c:Z

    .line 43
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->h:Z

    .line 57
    iput-object p3, p0, Lcom/dolphin/browser/tablist/bd;->a:Landroid/view/View;

    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bd;->f:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/tablist/bd;->d:I

    .line 60
    iput-boolean p4, p0, Lcom/dolphin/browser/tablist/bd;->g:Z

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/dolphin/browser/tablist/bd;
    .locals 1

    .prologue
    .line 47
    .line 49
    new-instance v0, Lcom/dolphin/browser/tablist/bd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/bd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/dolphin/browser/tablist/bd;->d:I

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->h:Z

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->c:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bd;->e:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/tablist/cu;Landroid/widget/LinearLayout;Z)V
    .locals 2

    .prologue
    .line 65
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->h:Z

    .line 66
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/bd;->h:Z

    if-eqz v0, :cond_0

    .line 67
    iput-object p2, p0, Lcom/dolphin/browser/tablist/bd;->b:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bd;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bd;->e:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 72
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/dolphin/browser/tablist/bd;->d:I

    return v0
.end method
