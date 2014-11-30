.class public Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "PagedropNameSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->a:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 83
    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/k;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/pagedrop/activity/k;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080286

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 63
    const-string v0, ""

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, "pagedrop_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    const-string v2, "user_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->finish()V

    .line 80
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->requestWindowFeature(I)Z

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300aa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->setContentView(I)V

    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->a:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->c:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->a(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->getWindow()Landroid/view/Window;

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

    .line 55
    return-void
.end method
