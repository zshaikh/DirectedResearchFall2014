.class public Lcom/dolphin/browser/share/box/a;
.super Landroid/widget/LinearLayout;
.source "BoxFolderItem.java"


# instance fields
.field private a:Lcom/b/a/a/b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/box/a;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030078

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/share/box/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/a;->b:Landroid/widget/ImageView;

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/a;->c:Landroid/widget/TextView;

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/a;->d:Landroid/widget/ImageView;

    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/a;->b()V

    .line 35
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/share/box/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v1, p0, Lcom/dolphin/browser/share/box/a;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 43
    iget-object v1, p0, Lcom/dolphin/browser/share/box/a;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ba

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/share/box/a;->a:Lcom/b/a/a/b;

    return-object v0
.end method

.method public a(Lcom/b/a/a/b;)V
    .locals 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/share/box/a;->a:Lcom/b/a/a/b;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/share/box/a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/b/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/share/box/a;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/share/box/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 59
    :cond_0
    return-void
.end method
