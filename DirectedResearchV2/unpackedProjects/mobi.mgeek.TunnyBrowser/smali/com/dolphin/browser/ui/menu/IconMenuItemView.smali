.class public final Lcom/dolphin/browser/ui/menu/IconMenuItemView;
.super Landroid/widget/TextView;
.source "IconMenuItemView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/g;


# static fields
.field private static l:Ljava/lang/String;


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/IconMenuView;

.field private b:Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;

.field private c:Lcom/dolphin/browser/ui/menu/e;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:F

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->h:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->i:Landroid/graphics/Rect;

    .line 48
    sget-object v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->prepend_shortcut_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->l:Ljava/lang/String;

    .line 57
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x6

    const v2, 0x3f4ccccd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->g:F

    .line 63
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->e:I

    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->f:Landroid/content/Context;

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->i:Landroid/graphics/Rect;

    .line 268
    invoke-virtual {p0, v3, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 269
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getWidth()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->h:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->i:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 243
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    .line 244
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;-><init>(II)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->e:I

    .line 253
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setTextColor(I)V

    .line 133
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    .line 163
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setGravity(I)V

    .line 179
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->requestLayout()V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setGravity(I)V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/ui/menu/IconMenuView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    .line 209
    return-void
.end method

.method public a(Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->b:Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;

    .line 190
    return-void
.end method

.method public a(Lcom/dolphin/browser/ui/menu/e;I)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    .line 95
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/e;->a(Lcom/dolphin/browser/ui/menu/g;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setEnabled(Z)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->j:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setClickable(Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setFocusable(Z)V

    .line 83
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->f:Landroid/content/Context;

    iget v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$color;->menu_title_textcolor:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(I)V

    .line 90
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->j:Z

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/menu/e;->a(Lcom/dolphin/browser/ui/menu/g;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->j:Z

    if-eqz v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->k:Ljava/lang/String;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->k:Ljava/lang/String;

    .line 157
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZC)V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->j:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->k:Ljava/lang/String;

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->g:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 221
    :cond_1
    return-void

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 225
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 227
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->d()V

    .line 228
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a()Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->b:Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->b:Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->c:Lcom/dolphin/browser/ui/menu/e;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/dolphin/browser/ui/menu/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b()V

    .line 205
    :cond_0
    return-void
.end method
