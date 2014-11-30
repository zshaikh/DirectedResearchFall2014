.class public Lcom/twitter/android/WidgetSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    packed-switch v4, :pswitch_data_0

    const/4 v1, 0x1

    const v0, 0x7f050003

    :goto_0
    iget-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v6

    iget v7, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    iget v8, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    invoke-virtual {v6, v7, v1, v5, v8}, Lcom/twitter/android/provider/q;->a(IILjava/lang/String;I)I

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v4, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/twitter/android/WidgetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->finish()V

    return-void

    :pswitch_0
    const v0, 0x7f050004

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f03005c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10

    const v9, 0x7f0b009c

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    move v1, v2

    move v0, v3

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, p1, v1

    const-string v7, "com.twitter.android.auth.login"

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v0, v3, :cond_2

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    if-ltz v0, :cond_0

    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "widget_account"

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/WidgetSettingsActivity;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0700d4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/WidgetSettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    :cond_0
    iget v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->finish()V

    :cond_1
    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/twitter/android/WidgetSettingsActivity;->a()V

    :goto_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void

    :cond_2
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->addPreferencesFromResource(I)V

    const-string v0, "widget_content_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "widget_content_mentions"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "widget_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    check-cast p1, Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "widget_content_tweets"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v2, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    const-string v0, "widget_content_mentions"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/twitter/android/RadioButtonPreference;->setChecked(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "widget_content_mentions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    const-string v0, "widget_content_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/twitter/android/RadioButtonPreference;->setChecked(Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
