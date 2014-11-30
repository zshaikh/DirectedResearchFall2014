.class final Lcom/twitter/android/dt;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private final i:Landroid/accounts/Account;

.field private synthetic j:Lcom/twitter/android/AccountSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/dt;->i:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AccountSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/av;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/dt;->i:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notif_tweet"

    aput-object v4, v2, v6

    const-string v4, "notif_mention"

    aput-object v4, v2, v7

    const-string v4, "notif_message"

    aput-object v4, v2, v11

    const-string v4, "interval"

    aput-object v4, v2, v9

    const/4 v4, 0x4

    const-string v5, "vibrate"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "ringtone"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "light"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    move v1, v6

    :goto_0
    const/16 v4, 0x3c

    const-string v8, ""

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v10, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_1
    invoke-interface {v10, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_0
    invoke-interface {v10, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :cond_2
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v7, :cond_5

    move v5, v7

    :goto_2
    const/4 v9, 0x5

    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_3
    const/4 v9, 0x6

    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x6

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_6

    move v9, v7

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_4
    iput v2, p0, Lcom/twitter/android/dt;->c:I

    iput v1, p0, Lcom/twitter/android/dt;->d:I

    iput v0, p0, Lcom/twitter/android/dt;->e:I

    iput v4, p0, Lcom/twitter/android/dt;->f:I

    iput-boolean v5, p0, Lcom/twitter/android/dt;->g:Z

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iput-object v8, v0, Lcom/twitter/android/AccountSettingsActivity;->h:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/twitter/android/dt;->h:Z

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/dt;->i:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "com.android.contacts"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/dt;->i:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/platform/d;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dt;->a:Ljava/lang/Integer;

    :goto_5
    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/dt;->i:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/dt;->b:Z

    return-object v3

    :cond_4
    move v0, v7

    move v1, v7

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    move v9, v6

    goto :goto_3

    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dt;->a:Ljava/lang/Integer;

    goto :goto_5

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dt;->a:Ljava/lang/Integer;

    goto :goto_5

    :cond_9
    move v9, v6

    goto :goto_3

    :cond_a
    move v5, v6

    goto :goto_2

    :cond_b
    move v2, v6

    goto/16 :goto_1

    :cond_c
    move v9, v6

    move v5, v6

    move v2, v6

    goto :goto_3

    :cond_d
    move v9, v6

    move v5, v6

    move v2, v6

    goto :goto_4
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AccountSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "notif_timeline"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/twitter/android/dt;->c:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/AccountSettingsActivity;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "notif_mentions_choice"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget v1, p0, Lcom/twitter/android/dt;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twitter/android/util/q;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "notif_direct_messages"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/twitter/android/dt;->e:I

    if-ne v1, v2, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "sync_contacts"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/twitter/android/dt;->a:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twitter/android/util/q;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "sync_data"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/dt;->b:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "polling_interval"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget v1, p0, Lcom/twitter/android/dt;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twitter/android/util/q;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/dt;->g:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/AccountSettingsActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "use_led"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/dt;->h:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/dt;->a:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/twitter/android/AccountSettingsActivity;->d:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v1, p0, Lcom/twitter/android/dt;->b:Z

    iput-boolean v1, v0, Lcom/twitter/android/AccountSettingsActivity;->a:Z

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget v1, p0, Lcom/twitter/android/dt;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget v1, p0, Lcom/twitter/android/dt;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/AccountSettingsActivity;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    iget v1, p0, Lcom/twitter/android/dt;->f:I

    iput v1, v0, Lcom/twitter/android/AccountSettingsActivity;->g:I

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/dt;->j:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "notif_mentions"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/twitter/android/dt;->d:I

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto/16 :goto_2
.end method
