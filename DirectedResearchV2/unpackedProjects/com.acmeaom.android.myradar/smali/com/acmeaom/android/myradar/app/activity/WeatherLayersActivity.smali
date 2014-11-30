.class public Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;
.super Landroid/preference/PreferenceActivity;
.source "ProGuard"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/p;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/p;-><init>(Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->a:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/q;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/q;-><init>(Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->finish()V

    .line 100
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subsettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->addPreferencesFromResource(I)V

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 51
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 53
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 54
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/o;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/o;-><init>(Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 32
    :cond_2
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->addPreferencesFromResource(I)V

    .line 34
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    const-string v0, "warnings_enabled"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;

    .line 37
    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a()V

    .line 38
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_3
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "hurricanes_enabled"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;

    .line 44
    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a()V

    .line 45
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 65
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->finish()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
