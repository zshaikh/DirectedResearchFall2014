.class Lmobi/mgeek/TunnyBrowser/n;
.super Lmobi/mgeek/TunnyBrowser/i;
.source "BackupRestoreDialogHelper.java"


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/i;-><init>(Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/n;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 339
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 340
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 341
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 343
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/view/View;)V

    .line 322
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v1, v3

    .line 324
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    .line 325
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 326
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->e:Landroid/widget/TextView;

    .line 328
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P()I

    move-result v0

    .line 330
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/n;->d()V

    .line 334
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 348
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/i;->onClick(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v3

    .line 351
    :cond_1
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "RestoreDialog click"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 354
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    new-instance v0, Lmobi/mgeek/TunnyBrowser/o;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/o;-><init>(Lmobi/mgeek/TunnyBrowser/n;Landroid/content/DialogInterface;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 362
    :cond_2
    sget-object v1, Lmobi/mgeek/TunnyBrowser/n;->a:Lcom/dolphin/browser/util/bx;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_3

    .line 363
    new-instance v0, Lmobi/mgeek/TunnyBrowser/o;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/o;-><init>(Lmobi/mgeek/TunnyBrowser/n;Landroid/content/DialogInterface;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 364
    :cond_3
    sget-object v1, Lmobi/mgeek/TunnyBrowser/n;->a:Lcom/dolphin/browser/util/bx;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 365
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e008c

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/n;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 366
    :cond_4
    sget-object v1, Lmobi/mgeek/TunnyBrowser/n;->a:Lcom/dolphin/browser/util/bx;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    sget-object v1, Lmobi/mgeek/TunnyBrowser/n;->a:Lcom/dolphin/browser/util/bx;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 368
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/n;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e008e

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/n;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method
