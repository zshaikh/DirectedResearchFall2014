.class Lcom/dolphin/browser/androidwebkit/m;
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

    .line 300
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 301
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/m;->a:I

    .line 291
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/m;->b:I

    .line 302
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/androidwebkit/m;->setOrientation(I)V

    .line 303
    new-instance v0, Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->e(Z)V

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(Z)V

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->f(Z)V

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(I)V

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(Z)V

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Z)V

    .line 312
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_full_bright:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/m;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    const/16 v0, 0x91

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/m;->setMinimumWidth(I)V

    .line 314
    return-void
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 318
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 319
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 320
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 321
    aget v2, v0, v1

    .line 322
    aget v4, v0, v7

    .line 323
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/m;->h:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/m;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 324
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/m;->i:I

    add-int/2addr v2, v4

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/m;->e:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/m;->a:I

    sub-int/2addr v2, v5

    .line 325
    if-gez v0, :cond_2

    move v0, v1

    .line 330
    :cond_0
    :goto_0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 331
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/m;->i:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/m;->b:I

    add-int/2addr v2, v3

    .line 334
    :cond_1
    aput v0, p1, v1

    .line 335
    aput v2, p1, v7

    .line 336
    return-void

    .line 327
    :cond_2
    iget v5, p0, Lcom/dolphin/browser/androidwebkit/m;->f:I

    add-int/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    .line 328
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/m;->f:I

    sub-int/2addr v0, v5

    goto :goto_0
.end method

.method private b(II)V
    .locals 6

    .prologue
    .line 347
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/m;->h:I

    .line 348
    iput p2, p0, Lcom/dolphin/browser/androidwebkit/m;->i:I

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->c()V

    .line 352
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 353
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/m;->a([I)V

    .line 354
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(IIII)V

    .line 356
    return-void
.end method

.method private d()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v1, 0x0

    .line 382
    const/4 v0, 0x0

    .line 383
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v2, v2, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/IWebView$ContextPanelListener;->onCreateContextPanel(Lcom/dolphin/browser/core/IWebView;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 386
    :goto_0
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_1
    return v1

    .line 389
    :cond_1
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v3

    .line 391
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 394
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 396
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->g:[Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 402
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->removeAllViews()V

    .line 403
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v7

    move v0, v1

    .line 404
    :goto_2
    array-length v8, v2

    if-ge v0, v8, :cond_3

    .line 405
    if-lez v0, :cond_2

    .line 406
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 407
    sget v9, Lcom/dolphin/browser/core/R$drawable;->alert_dialog_list_divider:I

    invoke-virtual {v7, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 411
    invoke-virtual {p0, v8, v9}, Lcom/dolphin/browser/androidwebkit/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_2
    aget-object v8, v2, v0

    .line 415
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/high16 v8, 0x41880000

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 421
    sget v8, Lcom/dolphin/browser/core/R$color;->dialog_item_text_color:I

    invoke-virtual {v7, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 423
    const/16 v8, 0x13

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 424
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 426
    invoke-virtual {v9, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    sget v8, Lcom/dolphin/browser/core/R$drawable;->dialog_item_selector_background:I

    invoke-virtual {v7, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {p0, v9, v5}, Lcom/dolphin/browser/androidwebkit/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 434
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/dolphin/browser/androidwebkit/m;->onMeasure(II)V

    .line 435
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/m;->f:I

    .line 436
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/m;->e:I

    .line 437
    iput-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->g:[Ljava/lang/String;

    .line 438
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    .line 340
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/m;->b(II)V

    .line 379
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 442
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/m;->f:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(I)V

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/m;->e:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(I)V

    .line 446
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 447
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/m;->d:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;III)V

    .line 449
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v2, v2, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v1, v2, v0}, Lcom/dolphin/browser/core/IWebView$ContextPanelListener;->onContextItemClicked(Lcom/dolphin/browser/core/IWebView;I)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/m;->a()V

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/m;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->requestFocus()Z

    .line 368
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 373
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 374
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 375
    return-void
.end method
