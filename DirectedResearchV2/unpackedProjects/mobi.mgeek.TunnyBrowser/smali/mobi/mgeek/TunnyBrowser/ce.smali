.class Lmobi/mgeek/TunnyBrowser/ce;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/Preference;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;Ldolphin/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ce;->c:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ce;->a:Ldolphin/preference/Preference;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/ce;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 979
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ce;->c:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    const-string v3, "use_dolphin_webkit_display"

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 981
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 982
    const-string v5, "use_dolphin_webkit_display"

    if-nez v3, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 984
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ce;->a:Ldolphin/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ce;->a:Ldolphin/preference/Preference;

    instance-of v0, v0, Ldolphin/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ce;->a:Ldolphin/preference/Preference;

    check-cast v0, Ldolphin/preference/CheckBoxPreference;

    .line 986
    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    .line 988
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ce;->c:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ce;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;ZLjava/lang/Object;)Z

    .line 989
    return-void

    :cond_2
    move v0, v2

    .line 982
    goto :goto_0
.end method
