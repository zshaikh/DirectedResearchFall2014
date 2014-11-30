.class public Lcom/mgeek/android/ui/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Lcom/mgeek/android/ui/bc;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mgeek/android/ui/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Lcom/mgeek/android/ui/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    .line 57
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabWidget;->b()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/TabWidget;)Lcom/mgeek/android/ui/bc;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mgeek/android/ui/TabWidget;->a:Lcom/mgeek/android/ui/bc;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->setOrientation(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/mgeek/android/ui/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->getChildCount()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 111
    :cond_0
    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    mul-int/lit8 p1, p1, 0x2

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/mgeek/android/ui/bc;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mgeek/android/ui/TabWidget;->a:Lcom/mgeek/android/ui/bc;

    .line 253
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 220
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 226
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 230
    iget-object v0, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 231
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v1, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v0, Lcom/mgeek/android/ui/bd;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/mgeek/android/ui/bd;-><init>(Lcom/mgeek/android/ui/TabWidget;ILcom/mgeek/android/ui/bb;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 246
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 168
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 173
    iput p1, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    .line 174
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/TabWidget;->b(I)V

    .line 198
    if-eq v0, p1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 201
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->invalidate()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 64
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 65
    iget p2, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    .line 69
    :cond_0
    :goto_0
    return p2

    .line 66
    :cond_1
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    if-lt p2, v0, :cond_0

    .line 67
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 256
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 257
    iget v0, p0, Lcom/mgeek/android/ui/TabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->a()I

    move-result v2

    move v0, v1

    .line 264
    :goto_1
    if-ge v0, v2, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->b(I)V

    .line 267
    iget-object v2, p0, Lcom/mgeek/android/ui/TabWidget;->a:Lcom/mgeek/android/ui/bc;

    invoke-interface {v2, v0, v1}, Lcom/mgeek/android/ui/bc;->a(IZ)V

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mgeek/android/ui/TabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 120
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabWidget;->a()I

    move-result v1

    .line 208
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v2

    .line 210
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method
