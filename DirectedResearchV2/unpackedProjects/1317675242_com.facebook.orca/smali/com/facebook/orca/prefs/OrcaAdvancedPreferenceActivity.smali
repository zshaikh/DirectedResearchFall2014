.class public Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;
.super Lcom/facebook/orca/activity/OrcaPreferenceActivity;
.source "OrcaAdvancedPreferenceActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/images/ImageCache;

.field private c:Lcom/facebook/orca/app/OrcaDataManager;

.field private d:Landroid/content/pm/PackageInfo;

.field private e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/images/ImageCache;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b:Lcom/facebook/orca/images/ImageCache;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 5

    .prologue
    .line 59
    const-string v0, "/orca/advanced/build_version"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    const v1, 0x7f0a00ce

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c:Lcom/facebook/orca/app/OrcaDataManager;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    .line 66
    const-string v0, "/orca/advanced/clear_image_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$1;-><init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    return-void
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "/orca/advanced/clear_thread_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;-><init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->setContentView(I)V

    .line 34
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 41
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b:Lcom/facebook/orca/images/ImageCache;

    .line 42
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c:Lcom/facebook/orca/app/OrcaDataManager;

    .line 43
    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d:Landroid/content/pm/PackageInfo;

    .line 46
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 48
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a(Landroid/preference/PreferenceScreen;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b(Landroid/preference/PreferenceScreen;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c(Landroid/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    const v1, 0x7f0a00b9

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 56
    return-void
.end method
