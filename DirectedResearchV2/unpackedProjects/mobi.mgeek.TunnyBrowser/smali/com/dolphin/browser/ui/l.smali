.class Lcom/dolphin/browser/ui/l;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlertController.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic b:Lcom/dolphin/browser/ui/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/dolphin/browser/extensions/ThemeManager;)V
    .locals 6

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/dolphin/browser/ui/l;->b:Lcom/dolphin/browser/ui/h;

    iput-object p7, p0, Lcom/dolphin/browser/ui/l;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1009
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1010
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1011
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1012
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/l;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget v4, Lcom/dolphin/browser/core/R$color;->dialog_list_item_text_color:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1014
    :cond_0
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1015
    check-cast v0, Landroid/widget/CheckedTextView;

    sget v3, Lcom/dolphin/browser/core/R$drawable;->radio_on:I

    sget v4, Lcom/dolphin/browser/core/R$drawable;->radio_off:I

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    :cond_1
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    .line 1018
    check-cast v1, Landroid/widget/CheckedTextView;

    sget v0, Lcom/dolphin/browser/core/R$drawable;->checkbox_on:I

    sget v3, Lcom/dolphin/browser/core/R$drawable;->checkbox_off:I

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/l;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    .line 1021
    return-object v2
.end method
