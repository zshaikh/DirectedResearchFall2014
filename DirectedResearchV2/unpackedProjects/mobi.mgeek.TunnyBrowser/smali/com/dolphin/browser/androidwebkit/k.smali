.class Lcom/dolphin/browser/androidwebkit/k;
.super Landroid/widget/LinearLayout;
.source "MyWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:I

.field public final b:I

.field final synthetic c:Lcom/dolphin/browser/androidwebkit/MyWebView;

.field private final d:Lcom/dolphin/browser/ui/view/PopupWindow;

.field private e:I

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 113
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/k;->a:I

    .line 103
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/k;->b:I

    .line 114
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/androidwebkit/k;->setOrientation(I)V

    .line 115
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/k;->setGravity(I)V

    .line 116
    new-instance v0, Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->e(Z)V

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(Z)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->f(Z)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(I)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(Z)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Z)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/androidwebkit/k;->a(I)V

    .line 125
    return-void
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 169
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/k;->h:I

    .line 170
    iput p2, p0, Lcom/dolphin/browser/androidwebkit/k;->i:I

    .line 171
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->c()V

    .line 175
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 176
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/k;->a([I)V

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(IIII)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->a()V

    goto :goto_0
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 130
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 132
    aget v2, v0, v1

    .line 133
    aget v4, v0, v7

    .line 134
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/k;->h:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/k;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 135
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/k;->i:I

    add-int/2addr v2, v4

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/k;->e:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/k;->a:I

    sub-int/2addr v2, v5

    .line 136
    if-gez v0, :cond_1

    move v0, v1

    .line 141
    :cond_0
    :goto_0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    .line 142
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/androidwebkit/k;->a(I)V

    .line 143
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/k;->i:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/k;->b:I

    add-int/2addr v2, v3

    .line 147
    :goto_1
    aput v0, p1, v1

    .line 148
    aput v2, p1, v7

    .line 149
    return-void

    .line 138
    :cond_1
    iget v5, p0, Lcom/dolphin/browser/androidwebkit/k;->f:I

    add-int/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    .line 139
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/k;->f:I

    sub-int/2addr v0, v5

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/androidwebkit/k;->a(I)V

    goto :goto_1
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v3, v3, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onCreateSelectTextButtons(Lcom/dolphin/browser/core/IWebView;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 227
    :goto_0
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_1
    return v1

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->g:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 232
    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v5

    .line 233
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v6, Lcom/dolphin/browser/core/R$color;->option_button_text_color:I

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->removeAllViews()V

    move v0, v1

    .line 236
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 237
    if-lez v0, :cond_2

    .line 238
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    sget v9, Lcom/dolphin/browser/core/R$drawable;->text_select_divider:I

    invoke-virtual {v8, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {p0, v7, v8}, Lcom/dolphin/browser/androidwebkit/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_2
    aget-object v7, v3, v0

    .line 246
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const/high16 v7, 0x41800000

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 249
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 251
    const/16 v7, 0x11

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 253
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v7

    sget v9, Lcom/dolphin/browser/core/R$drawable;->text_select_bk:I

    invoke-virtual {v7, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const/16 v7, 0x37

    invoke-static {v7}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v7

    invoke-virtual {p0, v8, v7, v10}, Lcom/dolphin/browser/androidwebkit/k;->addView(Landroid/view/View;II)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/dolphin/browser/androidwebkit/k;->onMeasure(II)V

    .line 261
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/k;->f:I

    .line 262
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/k;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/k;->e:I

    .line 263
    iput-object v3, p0, Lcom/dolphin/browser/androidwebkit/k;->g:[Ljava/lang/String;

    move v1, v2

    .line 264
    goto/16 :goto_1

    :cond_4
    move-object v3, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    .line 153
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 268
    if-nez p1, :cond_1

    .line 269
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_above:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 272
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_below:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 2

    .prologue
    .line 217
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 218
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 219
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/k;->a(II)V

    .line 220
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 278
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/k;->f:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(I)V

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/k;->e:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(I)V

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 283
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/k;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;III)V

    .line 285
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->F()Z

    .line 189
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/l;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/androidwebkit/l;-><init>(Lcom/dolphin/browser/androidwebkit/k;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->requestFocus()Z

    .line 201
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 206
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 207
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 208
    return-void
.end method
