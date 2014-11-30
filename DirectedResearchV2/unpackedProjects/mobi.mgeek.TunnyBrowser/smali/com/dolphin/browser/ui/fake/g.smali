.class Lcom/dolphin/browser/ui/fake/g;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlertController.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic b:Lcom/dolphin/browser/ui/fake/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/dolphin/browser/extensions/ThemeManager;)V
    .locals 6

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/g;->b:Lcom/dolphin/browser/ui/fake/c;

    iput-object p7, p0, Lcom/dolphin/browser/ui/fake/g;->a:Lcom/dolphin/browser/extensions/ThemeManager;

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
    .line 1209
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1210
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1211
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1212
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/g;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0043

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1214
    :cond_0
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1215
    check-cast v0, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/g;->b:Lcom/dolphin/browser/ui/fake/c;

    iget-object v3, v3, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    :cond_1
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    .line 1218
    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/g;->b:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    :cond_2
    return-object v2
.end method
