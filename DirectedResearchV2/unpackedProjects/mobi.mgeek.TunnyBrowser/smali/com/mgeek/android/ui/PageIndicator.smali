.class public Lcom/mgeek/android/ui/PageIndicator;
.super Landroid/view/View;
.source "PageIndicator.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/mgeek/android/ui/PageIndicator;->e:I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/PageIndicator;->h:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/PageIndicator;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/mgeek/android/ui/PageIndicator;->e:I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/PageIndicator;->h:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/PageIndicator;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 188
    iget v1, p0, Lcom/mgeek/android/ui/PageIndicator;->b:I

    if-ge v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/mgeek/android/ui/PageIndicator;->h:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mgeek/android/ui/PageIndicator;->b:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/mgeek/android/ui/PageIndicator;->a:I

    .line 79
    iput v0, p0, Lcom/mgeek/android/ui/PageIndicator;->b:I

    .line 80
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-object p1, p0, Lcom/mgeek/android/ui/PageIndicator;->c:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object p2, p0, Lcom/mgeek/android/ui/PageIndicator;->d:Landroid/graphics/drawable/Drawable;

    .line 85
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/mgeek/android/ui/PageIndicator;->g:I

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/mgeek/android/ui/PageIndicator;->f:I

    .line 87
    iget v0, p0, Lcom/mgeek/android/ui/PageIndicator;->g:I

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/PageIndicator;->setMinimumHeight(I)V

    .line 88
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PageIndicator;->invalidate()V

    .line 89
    return-void

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-direct {p0}, Lcom/mgeek/android/ui/PageIndicator;->a()I

    move-result v2

    .line 152
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    .line 153
    iget v3, p0, Lcom/mgeek/android/ui/PageIndicator;->e:I

    .line 154
    iget-object v4, p0, Lcom/mgeek/android/ui/PageIndicator;->c:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v5, p0, Lcom/mgeek/android/ui/PageIndicator;->d:Landroid/graphics/drawable/Drawable;

    .line 156
    iget v6, p0, Lcom/mgeek/android/ui/PageIndicator;->g:I

    .line 157
    iget v7, p0, Lcom/mgeek/android/ui/PageIndicator;->f:I

    move v0, v1

    .line 158
    :goto_0
    if-ge v0, v2, :cond_2

    .line 159
    iget v8, p0, Lcom/mgeek/android/ui/PageIndicator;->a:I

    if-ne v0, v8, :cond_1

    .line 160
    add-int v8, v7, v3

    mul-int/2addr v8, v0

    add-int v9, v7, v3

    mul-int/2addr v9, v0

    add-int/2addr v9, v7

    invoke-virtual {v4, v8, v1, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    if-eqz v5, :cond_0

    .line 164
    add-int v8, v7, v3

    mul-int/2addr v8, v0

    add-int v9, v7, v3

    mul-int/2addr v9, v0

    add-int/2addr v9, v7

    invoke-virtual {v5, v8, v1, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 170
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Lcom/mgeek/android/ui/PageIndicator;->a()I

    move-result v1

    .line 142
    if-lez v1, :cond_0

    .line 143
    iget v0, p0, Lcom/mgeek/android/ui/PageIndicator;->f:I

    mul-int/2addr v0, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/mgeek/android/ui/PageIndicator;->e:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 145
    :cond_0
    iget v1, p0, Lcom/mgeek/android/ui/PageIndicator;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/PageIndicator;->setMeasuredDimension(II)V

    .line 146
    return-void
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020218

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020217

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cu;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/PageIndicator;->c:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/PageIndicator;->d:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/mgeek/android/ui/PageIndicator;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mgeek/android/ui/PageIndicator;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/PageIndicator;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method
