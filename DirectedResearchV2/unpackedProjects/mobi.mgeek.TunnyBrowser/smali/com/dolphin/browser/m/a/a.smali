.class public Lcom/dolphin/browser/m/a/a;
.super Lcom/dolphin/browser/m/a/e;
.source "AppItem.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/dolphin/browser/promoted/e;

.field private d:Lcom/dolphin/browser/util/be;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/a/e;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/a/a;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ca

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/a;->a:Landroid/widget/ImageView;

    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802d7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/a;->b:Landroid/widget/ImageView;

    .line 29
    invoke-static {}, Lcom/dolphin/browser/util/ba;->a()Lcom/dolphin/browser/util/ba;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/be;->a(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)Lcom/dolphin/browser/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/a/a;->d:Lcom/dolphin/browser/util/be;

    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/m/a/a;->b()V

    .line 31
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02021d

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/promoted/e;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/m/a/a;->c:Lcom/dolphin/browser/promoted/e;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/promoted/e;)V
    .locals 3

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/m/a/a;->c:Lcom/dolphin/browser/promoted/e;

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/m/a/a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/a;->d:Lcom/dolphin/browser/util/be;

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/be;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/m/a/a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/a;->d:Lcom/dolphin/browser/util/be;

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/be;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method
