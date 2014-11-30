.class public Lam/sunrise/android/calendar/ui/InboxActionView;
.super Landroid/view/View;
.source "InboxActionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Typeface;

.field private c:F

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:Landroid/graphics/RectF;

.field private n:I

.field private o:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->m:Landroid/graphics/RectF;

    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->m:Landroid/graphics/RectF;

    .line 66
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->m:Landroid/graphics/RectF;

    .line 71
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->a()V

    .line 72
    return-void
.end method

.method private a(II)Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 229
    iget v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->c:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 230
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 231
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 232
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 233
    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    .line 196
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 199
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->b:Landroid/graphics/Typeface;

    .line 201
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->c:F

    .line 203
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->d:I

    .line 205
    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->e:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->f:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->g:I

    .line 212
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->h:I

    .line 213
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->i:I

    .line 214
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->j:I

    .line 216
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->k:I

    .line 217
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->l:I

    .line 219
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/InboxActionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0, p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    return-void
.end method


# virtual methods
.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40c00000

    const/high16 v7, 0x40000000

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v7

    .line 121
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v7

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->e:Landroid/graphics/drawable/Drawable;

    .line 128
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    sub-float v4, v1, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v2, v5

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 133
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->g:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->h:I

    int-to-float v2, v0

    .line 137
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->i:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 139
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->j:I

    int-to-float v3, v0

    .line 141
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    const/16 v4, 0x9

    if-le v0, v4, :cond_2

    .line 142
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 147
    :goto_1
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->m:Landroid/graphics/RectF;

    add-float v5, v1, v0

    add-float v6, v2, v3

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    iget v5, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->g:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v8, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    div-float/2addr v0, v7

    add-float/2addr v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    div-float v1, v3, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 161
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->j:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 171
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 172
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/InboxActionView;->getLocationOnScreen([I)V

    .line 173
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/InboxActionView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 176
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getWidth()I

    move-result v6

    .line 177
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/InboxActionView;->getHeight()I

    move-result v7

    .line 178
    aget v8, v3, v1

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 179
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 181
    invoke-static {v5, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 182
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v8, v4, :cond_1

    .line 183
    const/16 v4, 0x35

    aget v0, v3, v0

    sub-int v0, v9, v0

    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v0, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 188
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 189
    goto :goto_0

    .line 186
    :cond_1
    const/16 v3, 0x51

    invoke-virtual {v2, v3, v0, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 107
    iget v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->d:I

    if-le v0, v1, :cond_0

    .line 108
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->d:I

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 8

    .prologue
    .line 76
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    if-eq v0, p1, :cond_0

    .line 77
    iput p1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    .line 78
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    if-lez v0, :cond_2

    .line 79
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->l:I

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/InboxActionView;->a(II)Landroid/text/TextPaint;

    move-result-object v2

    .line 82
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 83
    const-string v1, "9+"

    .line 84
    invoke-static {v1, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    .line 89
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget v3, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->j:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->o:Landroid/text/StaticLayout;

    .line 96
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 98
    :cond_0
    return-void

    .line 86
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/InboxActionView;->o:Landroid/text/StaticLayout;

    goto :goto_1
.end method
