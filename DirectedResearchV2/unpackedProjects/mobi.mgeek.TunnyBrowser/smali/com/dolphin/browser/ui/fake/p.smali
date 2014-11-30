.class Lcom/dolphin/browser/ui/fake/p;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/fake/AlertDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Lcom/dolphin/browser/ui/fake/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/p;->a:Lcom/dolphin/browser/ui/fake/AlertDialog;

    iput-object p3, p0, Lcom/dolphin/browser/ui/fake/p;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 961
    if-eqz p1, :cond_0

    .line 962
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_0
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 911
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->a:Lcom/dolphin/browser/ui/fake/AlertDialog;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 912
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 957
    :cond_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->h:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->e:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    move v1, v2

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->n:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->c:Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->r:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    move v5, v2

    .line 918
    :goto_1
    if-nez v1, :cond_2

    if-eqz v5, :cond_0

    .line 921
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 922
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201e3

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 924
    sget-object v7, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v7, 0x7f0a0014

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 926
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02011f

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 929
    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .line 931
    if-eqz v1, :cond_a

    if-le v7, v2, :cond_a

    .line 933
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f0200ad

    invoke-direct {p0, v0, v4}, Lcom/dolphin/browser/ui/fake/p;->a(Landroid/view/View;I)V

    move v4, v2

    .line 936
    :goto_2
    if-eqz v1, :cond_5

    move v0, v2

    :goto_3
    move v8, v0

    move v0, v4

    move v4, v8

    .line 937
    :goto_4
    if-eqz v5, :cond_6

    move v1, v2

    :goto_5
    sub-int v1, v7, v1

    if-ge v4, v1, :cond_7

    .line 939
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200ab

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/fake/p;->a(Landroid/view/View;I)V

    .line 937
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_4

    :cond_3
    move v1, v3

    .line 915
    goto/16 :goto_0

    :cond_4
    move v5, v3

    .line 916
    goto :goto_1

    :cond_5
    move v0, v3

    .line 936
    goto :goto_3

    :cond_6
    move v1, v3

    .line 937
    goto :goto_5

    .line 942
    :cond_7
    if-eqz v5, :cond_9

    if-le v7, v2, :cond_9

    .line 944
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200ac

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/fake/p;->a(Landroid/view/View;I)V

    .line 947
    :goto_6
    if-eqz v2, :cond_0

    .line 948
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v3

    .line 950
    :goto_7
    if-ge v0, v7, :cond_0

    .line 951
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 952
    if-eqz v2, :cond_8

    .line 953
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 950
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move v2, v0

    goto :goto_6

    :cond_a
    move v4, v3

    goto :goto_2
.end method
