.class public Lcom/dolphin/browser/language/b;
.super Landroid/widget/TextView;
.source "LanguageItem.java"


# instance fields
.field private a:Lcom/dolphin/browser/language/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/dolphin/browser/language/b;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/language/b;)Lcom/dolphin/browser/language/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/language/b;->a:Lcom/dolphin/browser/language/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/b;->setHeight(I)V

    .line 35
    const/high16 v0, 0x41800000

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/b;->setTextSize(F)V

    .line 36
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a01a0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/b;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/b;->setGravity(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/language/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/language/b;->a:Lcom/dolphin/browser/language/a;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/language/a;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/language/b;->a:Lcom/dolphin/browser/language/a;

    .line 44
    invoke-virtual {p1}, Lcom/dolphin/browser/language/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/b;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/language/b;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/language/b;->a:Lcom/dolphin/browser/language/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/language/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    array-length v0, v2

    if-le v0, v4, :cond_0

    .line 58
    new-instance v0, Ljava/util/Locale;

    aget-object v3, v2, v3

    aget-object v2, v2, v4

    invoke-direct {v0, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 64
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 65
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 66
    iput-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e04ab

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e00dd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e06b4

    new-instance v6, Lcom/dolphin/browser/language/e;

    invoke-direct {v6, p0, v1}, Lcom/dolphin/browser/language/e;-><init>(Lcom/dolphin/browser/language/b;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v5, Lcom/dolphin/browser/language/d;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/dolphin/browser/language/d;-><init>(Lcom/dolphin/browser/language/b;Landroid/content/res/Configuration;Ljava/util/Locale;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/language/c;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/dolphin/browser/language/c;-><init>(Lcom/dolphin/browser/language/b;Landroid/content/res/Configuration;Ljava/util/Locale;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/Locale;

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
