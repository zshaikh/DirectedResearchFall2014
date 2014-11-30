.class public Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;
.super Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.source "MasterPasswordDecryptPasswordDialog.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->k()V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->finish()V

    .line 116
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/l/e;->a(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->l()Z

    move-result v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    const-string v1, "MP"

    const-string v2, "Not filling username and password."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->k()V

    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->finish()V

    .line 107
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onBackPressed()V

    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a(I)V

    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a:Landroid/widget/EditText;

    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e036b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e036a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b(I)V

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d9

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bw;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bw;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03c1

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bx;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bx;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 74
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a()V

    .line 75
    return-void

    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e065d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
