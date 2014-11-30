.class Lcom/dolphin/browser/ui/j;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

.field final synthetic c:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic d:Lcom/dolphin/browser/ui/h;

.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;Landroid/database/Cursor;ZZLcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;)V
    .locals 2

    .prologue
    .line 939
    iput-object p1, p0, Lcom/dolphin/browser/ui/j;->d:Lcom/dolphin/browser/ui/h;

    iput-boolean p5, p0, Lcom/dolphin/browser/ui/j;->a:Z

    iput-object p6, p0, Lcom/dolphin/browser/ui/j;->b:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    iput-object p7, p0, Lcom/dolphin/browser/ui/j;->c:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 944
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/j;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/dolphin/browser/ui/j;->d:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->N:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/ui/j;->e:I

    .line 946
    iget-object v1, p0, Lcom/dolphin/browser/ui/j;->d:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->O:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/j;->f:I

    .line 947
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 951
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 952
    iget v2, p0, Lcom/dolphin/browser/ui/j;->e:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-boolean v2, p0, Lcom/dolphin/browser/ui/j;->a:Z

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lcom/dolphin/browser/ui/j;->d:Lcom/dolphin/browser/ui/h;

    iget-object v2, v2, Lcom/dolphin/browser/ui/h;->H:[I

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/j;->b:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Lcom/dolphin/browser/ui/j;->f:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 958
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 962
    iget-object v0, p0, Lcom/dolphin/browser/ui/j;->d:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/dolphin/browser/core/R$layout;->select_dialog_multichoice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 964
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 965
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 966
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/j;->c:Lcom/dolphin/browser/extensions/ThemeManager;

    sget v4, Lcom/dolphin/browser/core/R$color;->dialog_list_item_text_color:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 968
    :cond_0
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    .line 969
    check-cast v1, Landroid/widget/CheckedTextView;

    sget v0, Lcom/dolphin/browser/core/R$drawable;->checkbox_on:I

    sget v3, Lcom/dolphin/browser/core/R$drawable;->checkbox_off:I

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/j;->c:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    .line 972
    return-object v2
.end method
