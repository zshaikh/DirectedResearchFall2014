.class Lcom/dolphin/browser/DolphinService/ui/n;
.super Ljava/lang/Object;
.source "ClearWordWatcherActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/n;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/n;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    move v0, v1

    .line 127
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v1

    .line 129
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 135
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    move v2, v1

    .line 139
    goto :goto_0

    :cond_2
    move v0, v2

    .line 124
    goto :goto_1

    :cond_3
    move v3, v2

    .line 127
    goto :goto_2

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
