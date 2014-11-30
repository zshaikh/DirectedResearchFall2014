.class Lcom/facebook/orca/contacts/picker/BasketMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "BasketMovementMethod.java"


# static fields
.field private static a:Lcom/facebook/orca/contacts/picker/BasketMovementMethod;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 92
    .line 94
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 99
    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    sub-int v1, v3, v1

    .line 101
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 102
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 104
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 105
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 107
    const-class v1, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {p3, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 109
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 110
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 112
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 113
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    if-gez v4, :cond_b

    .line 116
    sget-object v3, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->b:Ljava/lang/Object;

    invoke-interface {p3, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 117
    invoke-interface {p3}, Landroid/text/Spannable;->length()I

    move-result v1

    move v3, v1

    .line 121
    :goto_0
    if-le v3, v0, :cond_a

    move v0, v7

    move v1, v7

    .line 123
    :goto_1
    if-ge v0, v2, :cond_0

    move v0, v5

    move v1, v5

    .line 126
    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_2
    move v0, v6

    .line 193
    :goto_3
    return v0

    .line 128
    :pswitch_0
    if-ne v1, v0, :cond_2

    move v0, v6

    .line 129
    goto :goto_3

    .line 132
    :cond_2
    const-class v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {p3, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 134
    array-length v0, p0

    if-eq v0, v8, :cond_3

    move v0, v6

    .line 135
    goto :goto_3

    .line 137
    :cond_3
    aget-object v0, p0, v6

    invoke-virtual {v0, p2}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a(Landroid/widget/TextView;)V

    goto :goto_2

    :pswitch_1
    move v2, v6

    move v3, v5

    move v4, v5

    .line 147
    :goto_4
    array-length v5, p0

    if-ge v2, v5, :cond_6

    .line 148
    aget-object v5, p0, v2

    invoke-interface {p3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 150
    if-lt v5, v0, :cond_4

    if-ne v1, v0, :cond_5

    .line 151
    :cond_4
    if-le v5, v3, :cond_5

    .line 152
    aget-object v3, p0, v2

    invoke-interface {p3, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 153
    aget-object v4, p0, v2

    move v4, v3

    move v3, v5

    .line 147
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 159
    :cond_6
    if-ltz v4, :cond_1

    .line 161
    invoke-static {p3, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v0, v8

    .line 162
    goto :goto_3

    :pswitch_2
    move v2, v6

    move v3, v7

    move v4, v7

    .line 172
    :goto_5
    array-length v5, p0

    if-ge v2, v5, :cond_9

    .line 173
    aget-object v5, p0, v2

    invoke-interface {p3, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 175
    if-gt v5, v1, :cond_7

    if-ne v1, v0, :cond_8

    .line 176
    :cond_7
    if-ge v5, v4, :cond_8

    .line 178
    aget-object v3, p0, v2

    invoke-interface {p3, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 179
    aget-object v4, p0, v2

    move v4, v5

    .line 172
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 184
    :cond_9
    if-ge v3, v7, :cond_1

    .line 186
    invoke-static {p3, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v0, v8

    .line 187
    goto :goto_3

    :cond_a
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_b
    move v3, v4

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a:Lcom/facebook/orca/contacts/picker/BasketMovementMethod;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a:Lcom/facebook/orca/contacts/picker/BasketMovementMethod;

    .line 262
    :cond_0
    sget-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a:Lcom/facebook/orca/contacts/picker/BasketMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 242
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 244
    sget-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->b:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    sparse-switch p3, :sswitch_data_0

    .line 52
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ScrollingMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0, v1, p1, p2}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 47
    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 251
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->b:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v0, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->b:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 206
    if-eq v1, v5, :cond_0

    if-nez v1, :cond_4

    .line 208
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 209
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 211
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 212
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    .line 215
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 217
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 219
    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 221
    const-class v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 223
    array-length v2, v0

    if-eqz v2, :cond_3

    .line 224
    if-ne v1, v5, :cond_2

    .line 225
    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    move v0, v5

    .line 238
    :goto_1
    return v0

    .line 226
    :cond_2
    if-nez v1, :cond_1

    .line 228
    aget-object v1, v0, v4

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v4

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 238
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->a(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0
.end method
