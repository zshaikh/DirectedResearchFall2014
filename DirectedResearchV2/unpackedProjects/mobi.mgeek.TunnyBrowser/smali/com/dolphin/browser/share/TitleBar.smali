.class public Lcom/dolphin/browser/share/TitleBar;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/dolphin/browser/share/b/k;

.field private e:Lcom/dolphin/browser/share/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/TitleBar;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/TitleBar;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 81
    invoke-static {p0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/share/TitleBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v1, p0, Lcom/dolphin/browser/share/TitleBar;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/bb;->d()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/share/TitleBar;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0012

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300f0

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/share/TitleBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->c:Landroid/widget/TextView;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080345

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->a:Landroid/widget/ImageView;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080346

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/share/TitleBar;->a()V

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/share/b/c;)V
    .locals 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/share/TitleBar;->d:Lcom/dolphin/browser/share/b/k;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/c;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/s;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/share/TitleBar;->e:Lcom/dolphin/browser/share/s;

    .line 50
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->e:Lcom/dolphin/browser/share/s;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->e:Lcom/dolphin/browser/share/s;

    invoke-interface {v0}, Lcom/dolphin/browser/share/s;->a()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->e:Lcom/dolphin/browser/share/s;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/share/TitleBar;->e:Lcom/dolphin/browser/share/s;

    iget-object v1, p0, Lcom/dolphin/browser/share/TitleBar;->d:Lcom/dolphin/browser/share/b/k;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/s;->a(Lcom/dolphin/browser/share/b/k;)V

    goto :goto_0
.end method
