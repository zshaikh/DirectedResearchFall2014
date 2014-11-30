.class Lcom/dolphin/browser/ui/fake/f;
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

.field final synthetic c:Lcom/dolphin/browser/ui/fake/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/f;->c:Lcom/dolphin/browser/ui/fake/c;

    iput-object p6, p0, Lcom/dolphin/browser/ui/fake/f;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    iput-boolean p7, p0, Lcom/dolphin/browser/ui/fake/f;->b:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1188
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1189
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1190
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1191
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/f;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0043

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1193
    :cond_0
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1194
    check-cast v0, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/f;->c:Lcom/dolphin/browser/ui/fake/c;

    iget-object v3, v3, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/f;->b:Z

    if-eqz v0, :cond_2

    .line 1197
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/f;->c:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    aget v0, v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1199
    :cond_2
    return-object v2
.end method
