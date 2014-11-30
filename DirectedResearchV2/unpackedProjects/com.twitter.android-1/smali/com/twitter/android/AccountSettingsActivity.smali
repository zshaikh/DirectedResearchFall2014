.class public Lcom/twitter/android/AccountSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Z

.field b:Landroid/accounts/Account;

.field c:Lcom/twitter/android/client/e;

.field d:Ljava/lang/Integer;

.field e:Ljava/lang/Integer;

.field f:Ljava/lang/Integer;

.field g:I

.field h:Ljava/lang/String;

.field i:Z

.field private j:Lcom/twitter/android/client/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/AccountSettingsActivity;->i:Z

    iget-boolean v0, p0, Lcom/twitter/android/AccountSettingsActivity;->i:Z

    if-eqz v0, :cond_0

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/AccountSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "polling_interval"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "sync_contacts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "edit_profile"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "remove_account"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/fw;

    invoke-direct {v1, p0}, Lcom/twitter/android/fw;-><init>(Lcom/twitter/android/AccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/twitter/android/ax;

    invoke-direct {v0, p0}, Lcom/twitter/android/ax;-><init>(Lcom/twitter/android/AccountSettingsActivity;)V

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->j:Lcom/twitter/android/client/f;

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->j:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    return-void

    :cond_0
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/fv;

    invoke-direct {v0, p0}, Lcom/twitter/android/fv;-><init>(Lcom/twitter/android/AccountSettingsActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->j:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/android/util/q;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remove_account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "edit_profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    const-string v3, "account_user_info"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/dt;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/dt;-><init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/gg;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gg;-><init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
