.class public Lcom/dolphin/browser/c/d;
.super Lcom/dolphin/browser/c/a;
.source "BrowserCommand.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/dolphin/browser/c/d;->b:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/dolphin/browser/c/d;->c:I

    .line 37
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    instance-of v0, v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget v1, p0, Lcom/dolphin/browser/c/d;->c:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 46
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/c/d;->b()V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v1, p0, Lcom/dolphin/browser/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/c/d;->b()V

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03cf

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchTheme()Z

    .line 62
    const-string v0, "control panel"

    const-string v1, "click"

    const-string v2, "theme"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_4
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddOns2()Z

    .line 68
    const-string v0, "control panel"

    const-string v1, "click"

    const-string v2, "addons"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_5
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionDownload2()Z

    .line 74
    const-string v0, "control panel"

    const-string v1, "click"

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "dolphin:pref_res"

    const-string v2, "clear_data_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    const-string v0, "control panel"

    const-string v1, "click"

    const-string v2, "cleardata"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_7
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSettings2()Z

    .line 88
    const-string v0, "control panel"

    const-string v1, "click"

    const-string v2, "settings"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
