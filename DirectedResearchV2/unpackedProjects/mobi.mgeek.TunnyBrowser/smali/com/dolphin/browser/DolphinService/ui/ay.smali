.class Lcom/dolphin/browser/DolphinService/ui/ay;
.super Ljava/lang/Object;
.source "DolphinSignUpActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;Lcom/dolphin/browser/DolphinService/ui/ar;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ay;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 456
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->j(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->j(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 463
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->i(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    check-cast p1, Landroid/widget/TextView;

    .line 512
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 515
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 468
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 472
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 476
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 478
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->i(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    move v0, v1

    .line 480
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_3

    move v3, v1

    .line 481
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 482
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    move-object v0, p1

    .line 483
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    move v2, v1

    .line 484
    goto :goto_0

    :cond_2
    move v0, v2

    .line 478
    goto :goto_1

    :cond_3
    move v3, v2

    .line 480
    goto :goto_2

    .line 488
    :cond_4
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 489
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/ay;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->i(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_5

    move v0, v1

    .line 492
    :goto_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_6

    move v3, v1

    .line 494
    :goto_4
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    move-object v0, p1

    .line 498
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    move v2, v1

    .line 499
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 489
    goto :goto_3

    :cond_6
    move v3, v2

    .line 492
    goto :goto_4

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
