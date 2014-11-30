.class public Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;
.super Landroid/view/CustomMenuListActivity;
.source "WebsiteSettingsActivity.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private f:Lmobi/mgeek/TunnyBrowser/is;

.field private g:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/view/CustomMenuListActivity;-><init>()V

    .line 58
    const-string v0, "WebsiteSettingsActivity"

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->d:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    .line 155
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)Lmobi/mgeek/TunnyBrowser/is;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 642
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 643
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    new-instance v1, Lmobi/mgeek/TunnyBrowser/ip;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ip;-><init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 600
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/view/CustomMenuListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 620
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 621
    sget-object v0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 622
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e06af

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->e:Ljava/lang/String;

    .line 624
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300c4

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->setContentView(I)V

    .line 625
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    new-instance v0, Lmobi/mgeek/TunnyBrowser/is;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030124

    invoke-direct {v0, p0, p0, v1}, Lmobi/mgeek/TunnyBrowser/is;-><init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    .line 627
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 628
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->d()V

    .line 630
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->g:Landroid/widget/TextView;

    .line 631
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04a2

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    .line 634
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->a(Landroid/widget/ListAdapter;)V

    .line 636
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 637
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 638
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 657
    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 670
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08044b

    if-ne v0, v1, :cond_0

    .line 672
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06a8

    new-instance v2, Lmobi/mgeek/TunnyBrowser/iq;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/iq;-><init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 687
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->c()Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->f:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
