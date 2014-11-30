.class public Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "PrivateModeSettingsActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fp;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/fp;-><init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 82
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300c8

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->getWindow()Landroid/view/Window;

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

    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->a:Landroid/widget/ListView;

    .line 38
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/fr;

    invoke-direct {v1, p0, p0, v4}, Lmobi/mgeek/TunnyBrowser/fr;-><init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/fp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;->a()V

    .line 31
    return-void
.end method
