.class final Lcom/twitter/android/gg;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/accounts/Account;

.field private synthetic b:Lcom/twitter/android/AccountSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "sync_data"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/AccountSettingsActivity;->a:Z

    if-eq v0, v4, :cond_8

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v5, "polling_interval"

    invoke-virtual {v0, v5}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:I

    if-eq v0, v10, :cond_9

    move v0, v2

    :goto_1
    if-eqz v1, :cond_0

    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v9, v5, v4}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    invoke-static {v8, v0, v10}, Lcom/twitter/android/platform/n;->a(Landroid/content/Context;Landroid/accounts/Account;I)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v4, "sync_contacts"

    invoke-virtual {v0, v4}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->d:Ljava/lang/Integer;

    invoke-virtual {v5, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_b

    move v4, v2

    :goto_3
    invoke-static {v8, v6, v0, v4}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/platform/RemoveRawContactsService;

    invoke-direct {v0, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "account_name"

    iget-object v5, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v4, v0}, Lcom/twitter/android/AccountSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v4, "notif_timeline"

    invoke-virtual {v0, v4}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v4, v2

    :goto_4
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v5, "notif_direct_messages"

    invoke-virtual {v0, v5}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v5, v2

    :goto_5
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v11, v0, Lcom/twitter/android/AccountSettingsActivity;->i:Z

    if-eqz v11, :cond_e

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v6, "notif_mentions_choice"

    invoke-virtual {v0, v6}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    :goto_6
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12, v7}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "interval"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "vibrate"

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v13, "vibrate"

    invoke-virtual {v0, v13}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "ringtone"

    iget-object v10, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v10, v10, Lcom/twitter/android/AccountSettingsActivity;->h:Ljava/lang/String;

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "light"

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v13, "use_led"

    invoke-virtual {v0, v13}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "notif_tweet"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v11, :cond_4

    const-string v0, "notif_mention"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "notif_message"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-static {v8}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    iget-object v4, p0, Lcom/twitter/android/gg;->a:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v12, v11}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Landroid/content/ContentValues;Z)I

    if-eqz v11, :cond_7

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_7

    :cond_5
    packed-switch v6, :pswitch_data_0

    move v0, v3

    :goto_7
    if-ne v5, v2, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-static {v8, v9, v0, v3}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;IZ)V

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :cond_8
    move v1, v3

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto/16 :goto_2

    :cond_b
    move v4, v3

    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v5, v3

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/gg;->b:Lcom/twitter/android/AccountSettingsActivity;

    const-string v6, "notif_mentions"

    invoke-virtual {v0, v6}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v6, v2

    goto/16 :goto_6

    :cond_f
    move v6, v3

    goto/16 :goto_6

    :pswitch_0
    move v0, v7

    goto :goto_7

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
