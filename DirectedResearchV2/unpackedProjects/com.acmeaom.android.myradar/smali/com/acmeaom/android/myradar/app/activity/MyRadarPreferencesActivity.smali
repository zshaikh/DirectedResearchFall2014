.class public Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "ProGuard"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/acmeaom/android/myradar/a/f;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/acmeaom/android/myradar/a/l;

.field private c:Landroid/preference/PreferenceScreen;

.field private d:Landroid/preference/PreferenceScreen;

.field private e:Landroid/preference/PreferenceScreen;

.field private f:Landroid/preference/PreferenceScreen;

.field private g:Landroid/preference/PreferenceScreen;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private final j:Lcom/acmeaom/android/myradar/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/l;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/l;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->j:Lcom/acmeaom/android/myradar/a/j;

    return-void
.end method

.method private a()Landroid/preference/PreferenceGroup;
    .locals 2

    .prologue
    .line 241
    const-string v0, "upgrades"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 243
    const-string v1, "feature_remove_ads_cb"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    const-string v1, "feature_remove_ads"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    .line 247
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_0
    const-string v1, "feature_add_warnings_cb"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    const-string v1, "feature_add_warnings"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    .line 256
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_1
    const-string v1, "feature_add_hurricanes_cb"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 264
    const-string v1, "feature_add_hurricanes"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    .line 265
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_2
    const-string v1, "feature_restore_purchases"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->g:Landroid/preference/PreferenceScreen;

    .line 275
    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 289
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private purchaseClicked(I)V
    .locals 2

    .prologue
    .line 405
    const v0, 0x7f080047

    if-ne p1, v0, :cond_1

    .line 406
    :try_start_0
    const-string v0, "/purchaseFeature/removeAds"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/l;->a(Ljava/lang/String;)Z

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const v0, 0x7f08000b

    if-ne p1, v0, :cond_2

    .line 409
    const-string v0, "/purchaseFeature/addWarningsAndWatches"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/l;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    :cond_2
    const v0, 0x7f08000a

    if-ne p1, v0, :cond_0

    .line 413
    :try_start_1
    const-string v0, "/purchaseFeature/addHurricanes"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/l;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    :cond_0
    const-string v0, "feature_remove_ads_cb"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 430
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    .line 433
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 437
    :cond_1
    const-string v0, "feature_add_warnings_cb"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 438
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 439
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 440
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    .line 442
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 446
    :cond_2
    const-string v0, "feature_add_hurricanes_cb"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 447
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 448
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 450
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    :cond_3
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setResult(I)V

    .line 299
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 300
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->i:Z

    .line 294
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 295
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 155
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c:Landroid/preference/PreferenceScreen;

    .line 159
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/a/e;->a(Lcom/acmeaom/android/myradar/a/f;)V

    .line 161
    invoke-static {p0}, Lcom/acmeaom/android/myradar/a/g;->a(Landroid/app/Activity;)Lcom/acmeaom/android/myradar/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->j:Lcom/acmeaom/android/myradar/a/j;

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/l;->a(Lcom/acmeaom/android/myradar/a/j;)V

    .line 163
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->b()V

    .line 165
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a()Landroid/preference/PreferenceGroup;

    .line 168
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b()V

    .line 170
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, "upgrades"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    const-string v0, "currentPrefScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    const-string v1, "feature_remove_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 197
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 201
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const v0, 0x7f08000b

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    .line 218
    :cond_2
    :goto_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    const-string v0, "feature_remove_ads_cb"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "upgrades"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 222
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 225
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_3
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 234
    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_4
    return-void

    .line 181
    :cond_5
    const-string v1, "feature_add_warnings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 185
    :cond_6
    const-string v1, "feature_add_hurricanes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v1, "feature_restore_purchases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->g:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->g:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 207
    :cond_9
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 209
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 210
    const v0, 0x7f08000a

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    goto/16 :goto_1

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 388
    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    invoke-static {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/k;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x20002
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/a/e;->b(Lcom/acmeaom/android/myradar/a/f;)V

    .line 324
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->g()V

    .line 325
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 326
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 463
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 465
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->finish()V

    .line 461
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->e()V

    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 310
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    const-string v0, "feature_remove_ads_cb"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const v0, 0x7f080047

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    .line 338
    :goto_0
    const-string v0, "/viewFeature/removeAds"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_1
    return v4

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 340
    :cond_2
    const-string v0, "feature_add_warnings_cb"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const v0, 0x7f08000b

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    .line 348
    :goto_2
    const-string v0, "/viewFeature/addWarningsAndWatches"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_2

    .line 350
    :cond_4
    const-string v0, "feature_add_hurricanes_cb"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    const v0, 0x7f08000a

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    .line 358
    :goto_3
    const-string v0, "/viewFeature/addHurricanes"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_3

    .line 360
    :cond_6
    const-string v0, "feature_restore_purchases"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 363
    const-string v0, "Requesting purchase history from Google Play..."

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->a()V

    .line 365
    const-string v0, "/feature/restore"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/m;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/m;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    .line 372
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    const v0, 0x7f0b0068

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 470
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 472
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 473
    check-cast p2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Dialog;Z)V

    .line 476
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 285
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->d()V

    .line 286
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 303
    const-string v0, "currentPrefScreen"

    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 280
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->c()V

    .line 281
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->f()V

    .line 318
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b:Lcom/acmeaom/android/myradar/a/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/l;->a(Lcom/acmeaom/android/myradar/a/j;)V

    .line 319
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 320
    return-void
.end method

.method public purchaseClicked(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->purchaseClicked(I)V

    .line 401
    return-void
.end method
