.class public Lcom/mgeek/android/util/n;
.super Ljava/lang/Object;
.source "PrivateModeToggleHelper.java"


# direct methods
.method static synthetic a()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/mgeek/android/util/n;->b()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0}, Lcom/mgeek/android/util/n;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mgeek/android/util/s;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v2

    .line 30
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->x()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    .line 35
    :goto_1
    if-eqz v2, :cond_2

    .line 36
    invoke-static {p0}, Lcom/mgeek/android/util/n;->d(Landroid/content/Context;)Z

    move-result v0

    move v3, v0

    .line 42
    :goto_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 43
    invoke-static {p0}, Lcom/mgeek/android/util/n;->c(Landroid/content/Context;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/mgeek/android/util/s;->a()V

    .line 114
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v1

    .line 32
    goto :goto_0

    :cond_2
    move v3, v1

    .line 38
    goto :goto_2

    .line 51
    :cond_3
    if-eqz v2, :cond_6

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00fb

    .line 53
    if-eqz v3, :cond_5

    .line 54
    if-eqz v4, :cond_4

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00fa

    .line 68
    :goto_4
    new-instance v4, Lcom/mgeek/android/util/o;

    invoke-direct {v4, p0}, Lcom/mgeek/android/util/o;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v5, Lcom/mgeek/android/util/p;

    invoke-direct {v5}, Lcom/mgeek/android/util/p;-><init>()V

    .line 88
    new-instance v6, Lcom/mgeek/android/util/q;

    invoke-direct {v6, v3, p0}, Lcom/mgeek/android/util/q;-><init>(ZLandroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04f9

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04f8

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    new-instance v2, Lcom/mgeek/android/util/r;

    invoke-direct {v2, p1}, Lcom/mgeek/android/util/r;-><init>(Lcom/mgeek/android/util/s;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto :goto_3

    .line 57
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00f8

    goto :goto_4

    .line 60
    :cond_5
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00f9

    goto :goto_4

    .line 63
    :cond_6
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03cc

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03cb

    goto :goto_4

    :cond_7
    move v4, v1

    goto/16 :goto_1
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->removeAllTab()V

    .line 121
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->f(Landroid/content/ContentResolver;)V

    .line 125
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v4

    .line 130
    if-eqz v4, :cond_0

    .line 131
    invoke-static {p0}, Lcom/mgeek/android/util/n;->b(Landroid/content/Context;)V

    .line 133
    :cond_0
    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setPrivateBrowsing(Landroid/content/Context;Z)V

    .line 134
    const-string v0, "privateMode"

    const-string v3, "toggle to %s"

    new-array v5, v1, [Ljava/lang/Object;

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v3, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    return-void

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move v1, v2

    .line 134
    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/download/e;->g(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
