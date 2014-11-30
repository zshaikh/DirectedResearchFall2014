.class Lcom/dolphin/browser/ui/i;
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
.field final synthetic a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

.field final synthetic b:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic c:Z

.field final synthetic d:Lcom/dolphin/browser/ui/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/dolphin/browser/ui/i;->d:Lcom/dolphin/browser/ui/h;

    iput-object p6, p0, Lcom/dolphin/browser/ui/i;->a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    iput-object p7, p0, Lcom/dolphin/browser/ui/i;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    iput-boolean p8, p0, Lcom/dolphin/browser/ui/i;->c:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 916
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 917
    iget-object v0, p0, Lcom/dolphin/browser/ui/i;->d:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/dolphin/browser/ui/i;->d:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    aget-boolean v0, v0, p1

    .line 919
    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/dolphin/browser/ui/i;->a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 923
    :cond_0
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 924
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 925
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/i;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    sget v4, Lcom/dolphin/browser/core/R$color;->dialog_list_item_text_color:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 927
    :cond_1
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 928
    check-cast v0, Landroid/widget/CheckedTextView;

    sget v3, Lcom/dolphin/browser/core/R$drawable;->checkbox_on:I

    sget v4, Lcom/dolphin/browser/core/R$drawable;->checkbox_off:I

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/i;->c:Z

    if-eqz v0, :cond_3

    .line 931
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dolphin/browser/ui/i;->d:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->H:[I

    aget v0, v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 933
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/i;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    .line 934
    return-object v2
.end method
