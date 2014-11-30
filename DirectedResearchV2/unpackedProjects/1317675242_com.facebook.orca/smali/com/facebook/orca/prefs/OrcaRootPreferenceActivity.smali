.class public Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;
.super Lcom/facebook/orca/activity/OrcaPreferenceActivity;
.source "OrcaRootPreferenceActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 56
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 57
    if-ne v0, p2, :cond_0

    .line 58
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v0, v4

    .line 66
    :goto_1
    return v0

    .line 60
    :cond_0
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 61
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 62
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 66
    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/cache/DataCache;

    .line 35
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 37
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 40
    const-string v1, "/orca/advanced"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 43
    const-string v1, "/orca/internal"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 46
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->w()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    const v1, 0x7f0a00b8

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 52
    return-void
.end method
