.class Lcom/dolphin/browser/ui/k;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/ui/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/dolphin/browser/ui/k;->c:Lcom/dolphin/browser/ui/h;

    iput-object p6, p0, Lcom/dolphin/browser/ui/k;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    iput-boolean p7, p0, Lcom/dolphin/browser/ui/k;->b:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 987
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 988
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 989
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 990
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/k;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget v4, Lcom/dolphin/browser/core/R$color;->dialog_list_item_text_color:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 992
    :cond_0
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 993
    check-cast v0, Landroid/widget/CheckedTextView;

    sget v3, Lcom/dolphin/browser/core/R$drawable;->radio_on:I

    sget v4, Lcom/dolphin/browser/core/R$drawable;->radio_off:I

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/k;->b:Z

    if-eqz v0, :cond_2

    .line 996
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dolphin/browser/ui/k;->c:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->H:[I

    aget v0, v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/k;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    .line 999
    return-object v2
.end method
