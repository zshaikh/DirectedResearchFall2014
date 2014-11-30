.class Lmobi/mgeek/TunnyBrowser/cc;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Ldolphin/preference/al;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cc;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cc;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/UserAgentListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cc;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/UserAgentListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/preference/UserAgentListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    :cond_0
    return-void
.end method
