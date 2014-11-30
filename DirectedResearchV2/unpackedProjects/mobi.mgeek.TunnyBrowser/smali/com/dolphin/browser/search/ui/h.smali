.class Lcom/dolphin/browser/search/ui/h;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 828
    instance-of v2, p1, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 832
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 833
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;I)I

    .line 835
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 837
    :pswitch_0
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->z(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 838
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/ui/c;->d(Lcom/dolphin/browser/search/ui/c;Z)Z

    goto :goto_0

    .line 842
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    move v2, v1

    .line 844
    :goto_1
    if-eqz v2, :cond_4

    .line 847
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->A(Lcom/dolphin/browser/search/ui/c;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Landroid/widget/TextView;I)Z

    move-result v2

    .line 849
    if-eqz v2, :cond_4

    .line 851
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 857
    const-string v0, "address bar"

    const-string v2, "clickbtn"

    const-string v3, "clear"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 860
    goto :goto_0

    :cond_3
    move v2, v0

    .line 842
    goto :goto_1

    .line 865
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 866
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/h;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
