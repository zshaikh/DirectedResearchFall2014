.class public Lcom/dolphin/browser/download/ui/be;
.super Landroid/widget/LinearLayout;
.source "FileItem.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/be;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030078

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/download/ui/be;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/be;->b:Landroid/widget/ImageView;

    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/be;->c:Landroid/widget/TextView;

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/be;->d:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/be;->a()V

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/be;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/be;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ba

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/be;->a:Ljava/io/File;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/be;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/be;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/be;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/be;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/be;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/e;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/be;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/be;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/be;->a:Ljava/io/File;

    return-object v0
.end method
