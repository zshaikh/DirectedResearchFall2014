.class public Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "WifiConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->d:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->e:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f:Landroid/widget/ImageView;

    .line 48
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->h:Z

    .line 215
    new-instance v0, Lcom/dolphin/browser/vg/ui/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/j;-><init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->l:Landroid/content/BroadcastReceiver;

    .line 235
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->m:Z

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->d:I

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->i:Landroid/widget/RelativeLayout;

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->j:Landroid/widget/TextView;

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->k:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/vg/ui/i;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/vg/ui/i;-><init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->i:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->k:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020204

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a018c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080401

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080402

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->e:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->e()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->h:Z

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->h:Z

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->h:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->h:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 132
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080403

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080404

    if-ne v0, v1, :cond_2

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->e()V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08027b

    if-ne v0, v1, :cond_1

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->requestWindowFeature(I)Z

    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030127

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->setContentView(I)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080405

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a:Landroid/widget/ProgressBar;

    .line 56
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080403

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b:Landroid/widget/RelativeLayout;

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080404

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->g:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Lcom/dolphin/browser/vg/ui/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/k;-><init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->c:Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a()V

    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->c()V

    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->c:Landroid/os/Handler;

    iget v1, p0, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->g()V

    .line 106
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 113
    return-void
.end method
