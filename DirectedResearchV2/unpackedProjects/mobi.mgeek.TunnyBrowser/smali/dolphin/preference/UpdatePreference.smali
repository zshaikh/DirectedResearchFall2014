.class public Ldolphin/preference/UpdatePreference;
.super Ldolphin/preference/PreferenceScreen;
.source "UpdatePreference.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ldolphin/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Ldolphin/preference/UpdatePreference;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->i()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Ldolphin/preference/UpdatePreference;->a:Landroid/content/Context;

    iget-object v2, p0, Ldolphin/preference/UpdatePreference;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0363

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 37
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "settings_new"

    const-string v1, "about_Dolphin"

    const-string v2, "FAQ"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ldolphin/preference/UpdatePreference;->a()V

    .line 28
    return-void
.end method
