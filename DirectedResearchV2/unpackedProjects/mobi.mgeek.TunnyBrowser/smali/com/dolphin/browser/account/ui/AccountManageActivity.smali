.class public Lcom/dolphin/browser/account/ui/AccountManageActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "AccountManageActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ExpandableListView;

.field private c:Lcom/dolphin/browser/account/ui/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->b:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/ui/a;->getGroupCount()I

    move-result v1

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->b:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f2

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/account/a;)V
    .locals 4

    .prologue
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "DBS Login"

    const-string v2, "entry"

    const-string v3, "setting"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->d:Z

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void

    .line 90
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v1, "share_type"

    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 122
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 123
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1

    .prologue
    .line 74
    check-cast p2, Lcom/dolphin/browser/account/ui/b;

    invoke-virtual {p2}, Lcom/dolphin/browser/account/ui/b;->a()Lcom/dolphin/browser/account/a;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a(Lcom/dolphin/browser/account/a;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 37
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->setContentView(I)V

    .line 39
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a:Landroid/widget/TextView;

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->b:Landroid/widget/ExpandableListView;

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->b:Landroid/widget/ExpandableListView;

    .line 42
    new-instance v1, Lcom/dolphin/browser/account/ui/a;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    .line 43
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 45
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->a()V

    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/AccountManageActivity;->b()V

    .line 52
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->c:Lcom/dolphin/browser/account/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/ui/a;->notifyDataSetChanged()V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->d:Z

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/account/ui/AccountManageActivity;->d:Z

    .line 105
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "DBS Login"

    const-string v1, "entry"

    const-string v2, "backtosetting"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method
