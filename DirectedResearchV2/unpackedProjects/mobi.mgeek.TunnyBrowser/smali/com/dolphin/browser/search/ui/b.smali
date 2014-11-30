.class public Lcom/dolphin/browser/search/ui/b;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Landroid/content/DialogInterface$OnDismissListener;Landroid/view/View;)Lcom/dolphin/browser/search/ui/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            "Landroid/view/View;",
            ")",
            "Lcom/dolphin/browser/search/ui/z;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/dolphin/browser/search/ui/z;

    sget-object v1, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v1, 0x7f0f0054

    invoke-direct {v0, p0, v1, p1}, Lcom/dolphin/browser/search/ui/z;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/z;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b00eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 27
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 31
    sget-object v2, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/z;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/search/ui/z;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    return-object v0
.end method
