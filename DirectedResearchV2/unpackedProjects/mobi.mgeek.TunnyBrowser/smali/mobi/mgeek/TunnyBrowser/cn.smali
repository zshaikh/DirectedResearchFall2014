.class Lmobi/mgeek/TunnyBrowser/cn;
.super Ljava/lang/Object;
.source "ClearDataGroupPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 91
    new-instance v0, Lmobi/mgeek/TunnyBrowser/co;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/co;-><init>(Lmobi/mgeek/TunnyBrowser/cn;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebView;

    .line 100
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    .line 101
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 102
    const/4 v1, 0x0

    .line 103
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_cache"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Landroid/content/Context;)V

    .line 108
    const-string v1, "settings_new"

    const-string v5, "clear_selected_data"

    const-string v6, "cache_and_site_data"

    invoke-static {v1, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 110
    :cond_0
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_cookies"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Landroid/content/Context;)V

    .line 113
    const-string v1, "settings_new"

    const-string v5, "clear_selected_data"

    const-string v6, "cookies"

    invoke-static {v1, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 115
    :cond_1
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_history"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v3, v4, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 117
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i(Landroid/content/Context;)V

    .line 119
    const-string v1, "settings_new"

    const-string v5, "clear_selected_data"

    const-string v6, "browsing_history"

    invoke-static {v1, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 121
    :cond_2
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_form_data"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j(Landroid/content/Context;)V

    .line 124
    const-string v1, "settings_new"

    const-string v5, "clear_selected_data"

    const-string v6, "form_data"

    invoke-static {v1, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 126
    :cond_3
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_passwords"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k(Landroid/content/Context;)V

    .line 129
    const-string v1, "settings_new"

    const-string v5, "clear_selected_data"

    const-string v6, "passwords"

    invoke-static {v1, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 131
    :cond_4
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    const-string v6, "privacy_clear_geolocation_access"

    invoke-virtual {v5, v6}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m(Landroid/content/Context;)V

    .line 134
    const-string v1, "settings_new"

    const-string v3, "clear_selected_data"

    const-string v4, "location_access"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    if-eqz v2, :cond_5

    .line 141
    new-instance v1, Lmobi/mgeek/TunnyBrowser/cp;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/cp;-><init>(Lmobi/mgeek/TunnyBrowser/cn;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 149
    :cond_5
    new-instance v1, Lmobi/mgeek/TunnyBrowser/cq;

    invoke-direct {v1, p0, v0}, Lmobi/mgeek/TunnyBrowser/cq;-><init>(Lmobi/mgeek/TunnyBrowser/cn;Lcom/dolphin/browser/core/IWebView;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 157
    return-void

    :cond_6
    move v2, v1

    goto :goto_0
.end method
