.class public Lmobi/mgeek/TunnyBrowser/fo;
.super Landroid/widget/LinearLayout;
.source "PasswordItem.java"


# instance fields
.field a:Lcom/dolphin/browser/extensions/ThemeManager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03005a

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 26
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/fo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/fo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->b:Landroid/widget/TextView;

    .line 29
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/fo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->c:Landroid/widget/TextView;

    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c8

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/fo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->d:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 33
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 35
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 38
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fo;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fo;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fo;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 48
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->e:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fo;->d:Landroid/widget/ImageView;

    return-object v0
.end method
