.class public final Lcom/twitter/android/v;
.super Landroid/text/method/ArrowKeyMovementMethod;


# static fields
.field private static final a:Lcom/twitter/android/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/v;

    invoke-direct {v0}, Lcom/twitter/android/v;-><init>()V

    sput-object v0, Lcom/twitter/android/v;->a:Lcom/twitter/android/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    sget-object v0, Lcom/twitter/android/v;->a:Lcom/twitter/android/v;

    return-object v0
.end method


# virtual methods
.method public final onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v1

    packed-switch p3, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v0, Lcom/twitter/android/fp;

    invoke-interface {p2, v4, v4, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/fp;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v0, v2

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v3, v4, :cond_1

    if-le v4, v7, :cond_1

    if-ge v4, v6, :cond_1

    invoke-static {p2, v7, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    :goto_2
    or-int/lit8 v0, v1, 0x0

    goto :goto_0

    :cond_1
    if-gt v3, v7, :cond_2

    if-le v4, v7, :cond_2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    :cond_2
    if-lt v3, v6, :cond_3

    if-ge v4, v6, :cond_3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v3, Lcom/twitter/android/fp;

    invoke-interface {p2, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/fp;

    array-length v3, v0

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    aget-object v2, v0, v5

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v0, v0, v5

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
