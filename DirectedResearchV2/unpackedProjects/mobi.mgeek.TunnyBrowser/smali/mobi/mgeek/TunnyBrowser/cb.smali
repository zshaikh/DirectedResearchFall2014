.class Lmobi/mgeek/TunnyBrowser/cb;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cb;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cb;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/CustomeUserAgentPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cb;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cb;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/CustomeUserAgentPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceGroup;->d(Ldolphin/preference/Preference;)Z

    .line 610
    :cond_0
    return-void
.end method
