.class public Lcom/dolphin/browser/bookmark/b/k;
.super Landroid/widget/LinearLayout;
.source "SpeedDialChooserItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300f5

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->setOrientation(I)V

    .line 44
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->setGravity(I)V

    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->a:Landroid/widget/TextView;

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->b:Landroid/widget/TextView;

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->c:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/k;->c()V

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/k;->f:Landroid/graphics/Bitmap;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 92
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->e:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x50

    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->d:Ljava/lang/String;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 117
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/k;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/b/k;->a(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/k;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/k;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0097

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method
