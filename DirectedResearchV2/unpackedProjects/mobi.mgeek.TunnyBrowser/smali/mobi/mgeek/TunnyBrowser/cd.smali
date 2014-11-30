.class Lmobi/mgeek/TunnyBrowser/cd;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Ldolphin/preference/ai;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/HomePagePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/HomePagePreference;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03d3

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/HomePagePreference;->setSummary(I)V

    .line 819
    const-string v0, "settings_new"

    const-string v1, "set_my_homepage"

    const-string v2, "use_the_new_tab_page"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    const-string v0, "settings_new"

    const-string v1, "set_my_homepage"

    const-string v2, "customize"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/HomePagePreference;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cd;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/HomePagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
