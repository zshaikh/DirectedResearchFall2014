.class public Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;
.super Ldolphin/preference/PreferenceActivity;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ldolphin/preference/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    .line 81
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "save_cache_to_sdcard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e038b

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 93
    :goto_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Z)V

    .line 96
    :cond_0
    return v0

    .line 89
    :cond_1
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01c6

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Ldolphin/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->n:Lmobi/mgeek/TunnyBrowser/R$xml;

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;->a(I)V

    .line 46
    const-string v0, "save_cache_to_sdcard"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p0}, Ldolphin/preference/Preference;->setOnPreferenceChangeListener(Ldolphin/preference/r;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Ldolphin/preference/PreferenceActivity;->onResume()V

    .line 56
    :try_start_0
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 59
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/fm;

    invoke-direct {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/fm;-><init>(Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;Ldolphin/preference/PreferenceScreen;)V

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebStorage;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 66
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/fn;

    invoke-direct {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/fn;-><init>(Lmobi/mgeek/TunnyBrowser/ManageSpaceActivity;Ldolphin/preference/PreferenceScreen;)V

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IGeolocationPermissions;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
