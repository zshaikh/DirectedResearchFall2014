.class Lcom/dolphin/browser/DolphinService/ui/ax;
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
    .line 369
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ax;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;Lcom/dolphin/browser/DolphinService/ui/ar;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ax;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 385
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ax;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->h(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ax;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->g(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    check-cast p1, Landroid/widget/TextView;

    .line 429
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 432
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 396
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 400
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 401
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/ax;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->g(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    move v0, v1

    .line 404
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v1

    .line 406
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 412
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 413
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    move v2, v1

    .line 416
    goto :goto_0

    :cond_2
    move v0, v2

    .line 401
    goto :goto_1

    :cond_3
    move v3, v2

    .line 404
    goto :goto_2

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
