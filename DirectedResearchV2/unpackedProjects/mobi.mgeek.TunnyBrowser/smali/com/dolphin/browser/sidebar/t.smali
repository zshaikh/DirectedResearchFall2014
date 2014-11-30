.class public Lcom/dolphin/browser/sidebar/t;
.super Landroid/widget/LinearLayout;
.source "ControlPanelView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/dolphin/browser/d/b;


# direct methods
.method private b()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->b:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/t;->c()V

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/t;->c:Lcom/dolphin/browser/d/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/d/b;->a()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a003a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/t;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/t;->b()V

    .line 195
    return-void
.end method
