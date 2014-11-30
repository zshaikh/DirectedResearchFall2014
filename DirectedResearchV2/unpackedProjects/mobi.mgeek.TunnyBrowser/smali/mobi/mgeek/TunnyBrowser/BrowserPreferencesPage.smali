.class public Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;
.super Ldolphin/preference/ExpandablePreferenceActivity;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Ldolphin/preference/r;
.implements Ldolphin/preference/s;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Lmobi/mgeek/preference/UserAgentListPreference;

.field private d:Lmobi/mgeek/preference/HomePagePreference;

.field private e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

.field private f:Ldolphin/preference/PreferenceGroup;

.field private g:Lcom/dolphin/browser/language/LanguageListPreference;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I

.field private k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;-><init>()V

    .line 96
    const-string v0, "BrowserPreferencesPage"

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/CustomeUserAgentPreference;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dolphin:pref_res"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    const-string v2, "xml"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 167
    if-lez v0, :cond_0

    .line 168
    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j:I

    .line 171
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    const-string v1, "is_default_browser"

    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v1, "use_dolphin_webkit_display"

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d()V

    .line 178
    return-void
.end method

.method static a(Ldolphin/preference/ListPreference;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 275
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 277
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 278
    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    return-void

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ldolphin/preference/PreferenceGroup;Ldolphin/preference/r;Ldolphin/preference/s;)V
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v3

    .line 287
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 288
    invoke-virtual {p0, v2}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 289
    invoke-virtual {v1, p1}, Ldolphin/preference/Preference;->setOnPreferenceChangeListener(Ldolphin/preference/r;)V

    .line 290
    invoke-virtual {v1, p2}, Ldolphin/preference/Preference;->setOnPreferenceClickListener(Ldolphin/preference/s;)V

    .line 291
    instance-of v0, v1, Ldolphin/preference/ListPreference;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 292
    check-cast v0, Ldolphin/preference/ListPreference;

    invoke-virtual {v0}, Ldolphin/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    instance-of v0, v1, Ldolphin/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 295
    check-cast v1, Ldolphin/preference/PreferenceGroup;

    invoke-static {v1, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/PreferenceGroup;Ldolphin/preference/r;Ldolphin/preference/s;)V

    .line 287
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 298
    :cond_2
    return-void
.end method

.method private static a(Ldolphin/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v3

    .line 251
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 252
    invoke-virtual {p0, v2}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 255
    instance-of v0, v1, Ldolphin/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 256
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    invoke-static {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 259
    :cond_2
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p0, v1}, Ldolphin/preference/PreferenceGroup;->d(Ldolphin/preference/Preference;)Z

    move-result v0

    .line 261
    if-eqz v0, :cond_3

    .line 262
    add-int/lit8 v1, v3, -0x1

    .line 263
    add-int/lit8 v0, v2, -0x1

    .line 251
    :goto_1
    add-int/lit8 v2, v0, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    move v0, v2

    move v1, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 554
    invoke-virtual {p2}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 557
    :try_start_0
    const-string v1, "settings_new"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;ZLjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(ZLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(ZLjava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f0e0210

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 920
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 922
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eg;->a()Lcom/dolphin/browser/core/g;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/core/g;->b(ZZ)V

    .line 923
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    const-string v2, "android.intent.extra.TITLE"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e021d

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    const-string v2, "android.intent.extra.TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e021a

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v2, "OK_BUTTON_TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v2, "settings_new"

    const-string v3, "Dolphin_Jetpack"

    const-string v4, "disable"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :goto_0
    const-string v2, "CANCEL_BUTTON_TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e020f

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v2, "ignore_saved_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    :cond_0
    move v2, p1

    .line 957
    :goto_1
    return v2

    .line 932
    :cond_1
    const-string v2, "settings_new"

    const-string v3, "Dolphin_Jetpack"

    const-string v4, "enable"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eg;->a()Lcom/dolphin/browser/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/g;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    const-string v2, "android.intent.extra.TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0219

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const-string v2, "OK_BUTTON_TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e020c

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 937
    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0218

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v2, "OK_BUTTON_TEXT"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 945
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 947
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eg;->a()Lcom/dolphin/browser/core/g;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/dolphin/browser/core/g;->b(ZZ)V

    .line 948
    if-eqz v0, :cond_0

    .line 949
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Landroid/content/Context;Z)V

    goto :goto_1

    .line 953
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    move-object v3, p0

    move-object v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)Z

    goto :goto_1
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Ldolphin/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f:Ldolphin/preference/PreferenceGroup;

    return-object v0
.end method

.method private b(Ldolphin/preference/Preference;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 962
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 963
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f03005d

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 965
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 966
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0042

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0337

    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e021d

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00f6

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ce;

    invoke-direct {v2, p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ce;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;Ldolphin/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 992
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 995
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p2}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 567
    :try_start_0
    const-string v1, "settings_new"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/UserAgentListPreference;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    return-object v0
.end method

.method private c(Ljava/lang/Object;Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p2}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 578
    if-eqz v0, :cond_1

    const-string v0, "enable"

    .line 579
    :goto_0
    const-string v2, "settings_new"

    invoke-static {v2, v1, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void

    .line 578
    :cond_1
    const-string v0, "disable"

    goto :goto_0
.end method

.method static synthetic d(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/preference/HomePagePreference;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    return-object v0
.end method

.method static synthetic e(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02026a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    new-instance v1, Lmobi/mgeek/TunnyBrowser/by;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/by;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 915
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 917
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 998
    const-string v0, "use_dolphin_webkit_display"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a()Ldolphin/preference/z;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1001
    const-string v2, "use_dolphin_webkit_display"

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1002
    instance-of v2, v0, Ldolphin/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1003
    check-cast v0, Ldolphin/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    .line 1005
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    const/16 v1, 0x400

    invoke-static {p0, v0, v1}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1011
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1014
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_0

    .line 1016
    instance-of v1, v0, Lcom/dolphin/browser/language/LanguageListPreference;

    if-eqz v1, :cond_0

    .line 1017
    check-cast v0, Lcom/dolphin/browser/language/LanguageListPreference;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/language/LanguageListPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 1019
    :cond_0
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 1023
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j:I

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ldolphin/preference/PreferenceGroup;Ldolphin/preference/Preference;)V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p1, p2}, Ldolphin/preference/PreferenceGroup;->c(Ldolphin/preference/Preference;)Z

    .line 230
    return-void
.end method

.method a(Ldolphin/preference/r;Ldolphin/preference/s;)V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/PreferenceGroup;Ldolphin/preference/r;Ldolphin/preference/s;)V

    .line 272
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    instance-of v1, v0, Ldolphin/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Ldolphin/preference/CheckBoxPreference;

    .line 240
    invoke-virtual {v0, p2}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public a(Ldolphin/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 789
    const-string v3, "BrowserPreferencesPage"

    const-string v4, "onPreferenceClick %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 790
    const-string v3, "language"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j()V

    .line 911
    :goto_0
    return v0

    .line 795
    :cond_0
    const-string v3, "user_agent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 796
    new-instance v1, Ldolphin/preference/aj;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/cc;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/cc;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V

    invoke-direct {v1, p0, v2}, Ldolphin/preference/aj;-><init>(Landroid/content/Context;Ldolphin/preference/al;)V

    invoke-virtual {v1}, Ldolphin/preference/aj;->a()V

    goto :goto_0

    .line 809
    :cond_1
    const-string v3, "pref_set_homepage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    new-instance v3, Ldolphin/preference/ag;

    new-instance v4, Lmobi/mgeek/TunnyBrowser/cd;

    invoke-direct {v4, p0}, Lmobi/mgeek/TunnyBrowser/cd;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V

    invoke-direct {v3, p0, v4}, Ldolphin/preference/ag;-><init>(Landroid/content/Context;Ldolphin/preference/ai;)V

    invoke-virtual {v3}, Ldolphin/preference/ag;->a()V

    .line 829
    :cond_2
    instance-of v3, p1, Ldolphin/preference/ListPreference;

    if-nez v3, :cond_3

    instance-of v3, p1, Ldolphin/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    .line 830
    goto :goto_0

    .line 833
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 834
    const-string v3, "gethelp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 835
    const-string v3, "settings_new"

    const-string v4, "about_Dolphin"

    const-string v5, "FAQ"

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_5
    :goto_1
    const-string v3, "settings_new"

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_6
    const-string v3, "setup_wizard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 848
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f()V

    goto :goto_0

    .line 837
    :cond_7
    const-string v3, "privacy_policy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 838
    const-string v3, "settings_new"

    const-string v4, "about_Dolphin"

    const-string v5, "privacy_policy"

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_8
    const-string v3, "join_us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 841
    const-string v3, "settings_new"

    const-string v4, "about_Dolphin"

    const-string v5, "like_us_on_Facebook"

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 852
    :cond_9
    const-string v3, "pref_search_engine"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 853
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->h()V

    goto/16 :goto_0

    .line 856
    :cond_a
    const-string v3, "pref_dolphin_feedback_some_else"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 857
    new-instance v2, Lcom/dolphin/browser/c/o;

    invoke-direct {v2, p0, v1}, Lcom/dolphin/browser/c/o;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/dolphin/browser/c/o;->a()Z

    .line 858
    const-string v1, "settings_new"

    const-string v2, "send_feedback"

    const-string v3, "new_feature_request"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 861
    :cond_b
    const-string v3, "pref_dolphin_feedback_crash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 862
    new-instance v1, Lcom/dolphin/browser/c/o;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/c/o;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/o;->a()Z

    .line 863
    const-string v1, "settings_new"

    const-string v2, "send_feedback"

    const-string v3, "stopped_unexpectedly"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    :cond_c
    const-string v3, "pref_dolphin_feedback_anr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 867
    new-instance v1, Lcom/dolphin/browser/c/o;

    invoke-direct {v1, p0, v6}, Lcom/dolphin/browser/c/o;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/o;->a()Z

    .line 868
    const-string v1, "settings_new"

    const-string v2, "send_feedback"

    const-string v3, "not_responding"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :cond_d
    const-string v3, "pref_dolphin_feedback_other"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 872
    new-instance v1, Lcom/dolphin/browser/c/o;

    invoke-direct {v1, p0, v7}, Lcom/dolphin/browser/c/o;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/o;->a()Z

    .line 873
    const-string v1, "settings_new"

    const-string v2, "send_feedback"

    const-string v3, "other_critical_issues"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_e
    const-string v3, "pref_account_dolphin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 878
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 880
    const-string v1, "settings_new"

    const-string v2, "Dolphin_connect"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 883
    :cond_f
    const-string v3, "pref_account_facebook"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 884
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    const-string v2, "share_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 887
    const-string v1, "settings_new"

    const-string v2, "Facebook"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :cond_10
    const-string v3, "pref_account_twitter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 891
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 892
    const-string v2, "share_type"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 894
    const-string v1, "settings_new"

    const-string v2, "Twitter"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_11
    const-string v3, "pref_account_evernote"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 898
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 899
    const-string v2, "share_type"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 901
    const-string v1, "settings_new"

    const-string v2, "Evernote"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    :cond_12
    const-string v3, "pref_account_box"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 905
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    const-string v2, "share_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivity(Landroid/content/Intent;)V

    .line 908
    const-string v1, "settings_new"

    const-string v2, "Box"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 911
    goto/16 :goto_0
.end method

.method public a(Ldolphin/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const v8, 0x7f0e038b

    const/16 v7, 0x64

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 585
    .line 586
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 587
    instance-of v0, p1, Ldolphin/preference/SingleChoiceGroupPreference;

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0, p2, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b(Ljava/lang/Object;Ldolphin/preference/Preference;)V

    .line 757
    :cond_0
    :goto_0
    return v2

    .line 591
    :cond_1
    instance-of v0, p1, Lmobi/mgeek/preference/UserAgentListPreference;

    if-eqz v0, :cond_3

    .line 593
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 595
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    if-eqz v0, :cond_19

    .line 596
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->performClick(Ldolphin/preference/PreferenceScreen;)V

    move v0, v1

    .line 613
    :goto_1
    invoke-direct {p0, p2, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/Object;Ldolphin/preference/Preference;)V

    move v2, v0

    .line 614
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 600
    check-cast v0, Ldolphin/preference/ListPreference;

    invoke-static {v0, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/ListPreference;Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->h:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/cb;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/cb;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    goto :goto_1

    .line 616
    :cond_3
    instance-of v0, p1, Ldolphin/preference/ListPreference;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 617
    check-cast v0, Ldolphin/preference/ListPreference;

    invoke-static {v0, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/ListPreference;Ljava/lang/Object;)V

    .line 618
    const-string v0, "orientation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 619
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->setRequestedOrientation(I)V

    .line 621
    :cond_4
    invoke-direct {p0, p2, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/Object;Ldolphin/preference/Preference;)V

    goto :goto_0

    .line 625
    :cond_5
    instance-of v0, p1, Lmobi/mgeek/preference/CustomeUserAgentPreference;

    if-eqz v0, :cond_8

    .line 626
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f:Ldolphin/preference/PreferenceGroup;

    const-string v4, "user_agent"

    invoke-virtual {v0, v4}, Ldolphin/preference/PreferenceGroup;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/ListPreference;

    .line 628
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 629
    if-eqz v0, :cond_6

    .line 630
    sget-object v5, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ldolphin/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 633
    sget-object v5, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v5, 0x7f070016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ldolphin/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 637
    :cond_6
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f:Ldolphin/preference/PreferenceGroup;

    const-string v4, "custom_user_agent"

    invoke-virtual {v0, v4}, Ldolphin/preference/PreferenceGroup;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_7

    .line 639
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f:Ldolphin/preference/PreferenceGroup;

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-virtual {p0, v0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/PreferenceGroup;Ldolphin/preference/Preference;)V

    .line 642
    :cond_7
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    if-eqz v0, :cond_8

    .line 643
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a(Ljava/lang/String;)V

    .line 646
    :cond_8
    instance-of v0, p1, Ldolphin/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 647
    invoke-direct {p0, p2, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c(Ljava/lang/Object;Ldolphin/preference/Preference;)V

    .line 649
    :cond_9
    const-string v0, "accept_cookies"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 650
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Z)V

    goto/16 :goto_0

    .line 652
    :cond_a
    const-string v0, "is_default_browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 653
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/Browser;->b(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_0

    .line 656
    :cond_b
    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/Browser;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 659
    :cond_c
    const-string v0, "save_cache_to_sdcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 661
    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 663
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 670
    :goto_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Z)V

    .line 671
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Z)V

    move v2, v1

    goto/16 :goto_0

    .line 665
    :cond_d
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c6

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 672
    :cond_e
    const-string v0, "smart_cache"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 673
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->H()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 674
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j(Landroid/content/Context;Z)V

    .line 678
    :goto_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    .line 679
    :goto_4
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->I()Z

    move-result v3

    if-eq v3, v0, :cond_11

    .line 680
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Z)V

    .line 681
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Z)V

    .line 686
    :goto_5
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 676
    :cond_f
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j(Landroid/content/Context;Z)V

    goto :goto_3

    :cond_10
    move v0, v1

    .line 678
    goto :goto_4

    .line 683
    :cond_11
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Z)V

    .line 684
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Z)V

    goto :goto_5

    .line 688
    :cond_12
    const-string v0, "reset_default_preferences"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 689
    const-string v0, "settings_new"

    const-string v1, "personal_data"

    const-string v3, "reset_to_default"

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    check-cast p2, Ljava/lang/Boolean;

    .line 691
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->finish()V

    goto/16 :goto_0

    .line 722
    :cond_13
    const-string v0, "use_dolphin_webkit_display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 724
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    .line 725
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a()Ldolphin/preference/z;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 726
    const-string v3, "use_dolphin_webkit_display"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 728
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 733
    :cond_14
    invoke-direct {p0, v2, p2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(ZLjava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 735
    :cond_15
    const-string v0, "use_master_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 736
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 737
    if-eqz v0, :cond_16

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    invoke-virtual {p0, v0, v7}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_6
    move v2, v1

    .line 744
    goto/16 :goto_0

    .line 741
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    const/16 v2, 0x67

    invoke-virtual {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 745
    :cond_17
    const-string v0, "remember_passwords"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 746
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 747
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v3

    .line 748
    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    const/16 v2, 0x68

    invoke-virtual {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v1

    .line 751
    goto/16 :goto_0

    .line 753
    :cond_18
    const-string v0, "keep_status_bar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 755
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;Z)V

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto/16 :goto_1
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j:I

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(I)V

    .line 460
    return-void
.end method

.method protected d()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 464
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Ldolphin/preference/PreferenceScreen;->d()V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c()V

    .line 469
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 470
    const-string v0, "enable_plugins"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 485
    :cond_1
    :goto_0
    const-string v0, "smart_cache"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 490
    invoke-static {p0}, Lcom/mgeek/android/util/x;->a(Landroid/content/Context;)Lcom/mgeek/android/util/x;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lcom/mgeek/android/util/x;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 492
    const-string v0, "new_features"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_2

    instance-of v2, v0, Ldolphin/preference/NewFeaturesPreference;

    if-eqz v2, :cond_2

    .line 494
    check-cast v0, Ldolphin/preference/NewFeaturesPreference;

    invoke-virtual {v1}, Lcom/mgeek/android/util/x;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/preference/NewFeaturesPreference;->a(Z)V

    .line 501
    :cond_2
    :goto_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 502
    const-string v0, "custom_user_agent"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/preference/CustomeUserAgentPreference;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    .line 503
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-virtual {v0, p0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->setOnPreferenceChangeListener(Ldolphin/preference/r;)V

    .line 506
    :cond_3
    const-string v0, "custom_user_agent"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->f:Ldolphin/preference/PreferenceGroup;

    .line 508
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/language/LanguageListPreference;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->g:Lcom/dolphin/browser/language/LanguageListPreference;

    .line 509
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->g:Lcom/dolphin/browser/language/LanguageListPreference;

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->g:Lcom/dolphin/browser/language/LanguageListPreference;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/language/LanguageListPreference;->setOnPreferenceClickListener(Ldolphin/preference/s;)V

    .line 512
    :cond_4
    invoke-static {p0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    const-string v1, "user_agent"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_5

    .line 514
    const-string v0, "custom_user_agent"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 516
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-nez v0, :cond_6

    .line 518
    const-string v0, "pref_vg_settings"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_6

    .line 520
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0465

    invoke-virtual {v0, v1}, Ldolphin/preference/Preference;->setTitle(I)V

    .line 524
    :cond_6
    const-string v0, "user_agent"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/preference/UserAgentListPreference;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    .line 525
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    if-eqz v0, :cond_7

    .line 526
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    invoke-virtual {v0, p0}, Lmobi/mgeek/preference/UserAgentListPreference;->setOnPreferenceClickListener(Ldolphin/preference/s;)V

    .line 527
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getUserAgent()I

    move-result v0

    .line 528
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    if-ne v3, v0, :cond_b

    .line 529
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/UserAgentListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    :cond_7
    :goto_2
    const-string v0, "pref_set_homepage"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/preference/HomePagePreference;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    .line 535
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    if-eqz v0, :cond_8

    .line 536
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    invoke-virtual {v0, p0}, Lmobi/mgeek/preference/HomePagePreference;->setOnPreferenceChangeListener(Ldolphin/preference/r;)V

    .line 538
    :cond_8
    invoke-virtual {p0, p0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ldolphin/preference/r;Ldolphin/preference/s;)V

    .line 539
    return-void

    .line 472
    :cond_9
    const-string v0, "plugin_state"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 473
    const-string v0, "enable_plugins"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Ldolphin/preference/Preference;->setBackgroudResource(I)V

    goto/16 :goto_0

    .line 497
    :cond_a
    const-string v0, "new_features"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 531
    :cond_b
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getUserAgent()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/UserAgentListPreference;->setValueIndex(I)V

    goto :goto_2
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->finish()V

    .line 184
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 762
    invoke-super {p0, p1, p2, p3}, Ldolphin/preference/ExpandablePreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 763
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a()Ldolphin/preference/z;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_default_browser"

    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 766
    const/16 v0, 0x400

    if-ne v0, p1, :cond_1

    if-ne v4, p2, :cond_1

    .line 768
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00dd

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/16 v0, 0x64

    if-ne v0, p1, :cond_2

    .line 770
    if-ne v4, p2, :cond_0

    .line 771
    const-string v0, "use_master_key"

    invoke-virtual {p0, v0, v6}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;Z)V

    .line 772
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/l/e;->a(Z)V

    goto :goto_0

    .line 774
    :cond_2
    const/16 v0, 0x67

    if-ne v0, p1, :cond_3

    .line 775
    if-ne v4, p2, :cond_0

    .line 776
    const-string v0, "use_master_key"

    invoke-virtual {p0, v0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;Z)V

    .line 777
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/l/e;->a(Z)V

    goto :goto_0

    .line 779
    :cond_3
    const/16 v0, 0x68

    if-ne v0, p1, :cond_0

    .line 780
    if-ne v4, p2, :cond_0

    .line 781
    const-string v0, "remember_passwords"

    invoke-virtual {p0, v0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Ldolphin/preference/ExpandablePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "BrowserPreferencesPage"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->h:Landroid/os/Handler;

    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/dolphin/browser/n/a;->n:Lmobi/mgeek/TunnyBrowser/R$xml;

    const v0, 0x7f05000e

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->i:I

    .line 123
    :goto_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->e()V

    .line 124
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->i:I

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j:I

    .line 125
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 126
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 127
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 128
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 131
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 133
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->l:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02034a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->g()V

    .line 138
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    .line 140
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->n:Lmobi/mgeek/TunnyBrowser/R$xml;

    const v0, 0x7f05000f

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->i:I

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0, p1}, Ldolphin/preference/ExpandablePreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 543
    invoke-super {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->onPause()V

    .line 544
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->b(Landroid/content/Context;)V

    .line 548
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/SharedPreferences;)V

    .line 551
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->onResume()V

    .line 308
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->a(Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->updateActivityOrientation(Landroid/app/Activity;)V

    .line 310
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    .line 312
    :try_start_0
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 316
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v3

    new-instance v4, Lmobi/mgeek/TunnyBrowser/bz;

    invoke-direct {v4, p0, v0}, Lmobi/mgeek/TunnyBrowser/bz;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;Ldolphin/preference/PreferenceScreen;)V

    invoke-interface {v3, v4}, Lcom/dolphin/browser/core/IWebStorage;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 324
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v3

    new-instance v4, Lmobi/mgeek/TunnyBrowser/ca;

    invoke-direct {v4, p0, v0}, Lmobi/mgeek/TunnyBrowser/ca;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;Ldolphin/preference/PreferenceScreen;)V

    invoke-interface {v3, v4}, Lcom/dolphin/browser/core/IGeolocationPermissions;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 334
    :cond_0
    const-string v0, "import_bookmarks"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 336
    if-eqz v0, :cond_1

    .line 337
    const/16 v3, 0x15

    invoke-static {p0, v3}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;I)Lcom/dolphin/browser/bookmarks/f;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v3

    if-eqz v3, :cond_13

    move v3, v1

    .line 340
    :goto_0
    invoke-virtual {v0, v3}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 343
    :cond_1
    const-string v0, "pref_help"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/NotifyPreference;

    .line 345
    if-eqz v0, :cond_2

    .line 346
    invoke-static {p0}, Lcom/mgeek/android/util/x;->a(Landroid/content/Context;)Lcom/mgeek/android/util/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgeek/android/util/x;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Ldolphin/preference/NotifyPreference;->a(Z)V

    .line 349
    :cond_2
    const-string v0, "checkupdate"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 351
    if-eqz v0, :cond_3

    .line 352
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/preload/m;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 354
    :goto_1
    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_3
    :goto_2
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_6

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_7

    .line 366
    :cond_6
    const-string v0, "enable_long_press_menu"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_7

    .line 370
    const-string v0, "enable_long_press_menu"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 383
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 384
    const-string v0, "use_dolphin_webkit_display"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_8

    .line 386
    const-string v0, "use_dolphin_webkit_display"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 388
    :cond_8
    const-string v0, "user_agent"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_9

    .line 390
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/preference/Preference;->setBackgroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getUserAgent()I

    move-result v0

    .line 393
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    const/16 v1, 0x64

    if-ne v1, v0, :cond_15

    .line 394
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/UserAgentListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    :cond_9
    :goto_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    if-eqz v0, :cond_a

    .line 401
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 402
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03d3

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/HomePagePreference;->setSummary(I)V

    .line 408
    :cond_a
    :goto_4
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->i()V

    .line 411
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    .line 412
    if-nez v0, :cond_f

    .line 413
    const-string v1, "networkboost.dns_prefetch"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_b

    .line 415
    const-string v1, "networkboost.dns_prefetch"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 417
    :cond_b
    const-string v1, "networkboost.preconnection"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_c

    .line 419
    const-string v1, "networkboost.preconnection"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 421
    :cond_c
    const-string v1, "networkboost.prefetch_strategy"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_d

    .line 423
    const-string v1, "networkboost.prefetch_strategy"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 425
    :cond_d
    const-string v1, "networkboost.preload_strategy"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_e

    .line 427
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020275

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/preference/Preference;->setBackgroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :cond_e
    const-string v1, "autofit_pages"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_f

    .line 431
    const-string v1, "autofit_pages"

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 435
    :cond_f
    sget-object v1, Lcom/dolphin/browser/n/a;->n:Lmobi/mgeek/TunnyBrowser/R$xml;

    const v1, 0x7f050012

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->j:I

    if-ne v1, v2, :cond_11

    .line 436
    if-nez v0, :cond_10

    .line 437
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isAboveJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 439
    const-string v0, "default_zoom"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 442
    :cond_10
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-nez v0, :cond_11

    .line 443
    const-string v0, "show_security_warnings"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 446
    :cond_11
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k()V

    .line 448
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_12

    .line 450
    const-string v0, "scrollable_left_state"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_12

    .line 452
    const-string v0, "scrollable_left_state"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->a(Ljava/lang/String;)V

    .line 455
    :cond_12
    return-void

    :cond_13
    move v3, v2

    .line 339
    goto/16 :goto_0

    :cond_14
    move v1, v2

    .line 352
    goto/16 :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 396
    :cond_15
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->c:Lmobi/mgeek/preference/UserAgentListPreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getUserAgent()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/UserAgentListPreference;->setValueIndex(I)V

    goto/16 :goto_3

    .line 404
    :cond_16
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->d:Lmobi/mgeek/preference/HomePagePreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/preference/HomePagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0, p1}, Ldolphin/preference/ExpandablePreferenceActivity;->setTitle(I)V

    .line 218
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Ldolphin/preference/ExpandablePreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
