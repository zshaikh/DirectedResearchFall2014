.class Lcom/dolphin/browser/ui/fake/d;
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
.field final synthetic a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

.field final synthetic b:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic c:Z

.field final synthetic d:Lcom/dolphin/browser/ui/fake/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/d;->d:Lcom/dolphin/browser/ui/fake/c;

    iput-object p6, p0, Lcom/dolphin/browser/ui/fake/d;->a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    iput-object p7, p0, Lcom/dolphin/browser/ui/fake/d;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    iput-boolean p8, p0, Lcom/dolphin/browser/ui/fake/d;->c:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1119
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1120
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/d;->d:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/d;->d:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    aget-boolean v0, v0, p1

    .line 1122
    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/d;->a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1126
    :cond_0
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1127
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1128
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/d;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0043

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1130
    :cond_1
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1131
    check-cast v0, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/d;->d:Lcom/dolphin/browser/ui/fake/c;

    iget-object v3, v3, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1133
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/d;->c:Z

    if-eqz v0, :cond_3

    .line 1134
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/d;->d:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    aget v0, v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1136
    :cond_3
    return-object v2
.end method
