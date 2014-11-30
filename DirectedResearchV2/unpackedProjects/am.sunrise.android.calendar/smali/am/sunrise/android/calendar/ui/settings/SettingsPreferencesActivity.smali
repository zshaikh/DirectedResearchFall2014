.class public Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;
.super Lam/sunrise/android/calendar/ui/settings/b;
.source "SettingsPreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final a:[Lam/sunrise/android/calendar/ui/settings/b/f;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lam/sunrise/android/calendar/ui/settings/b/a;

.field private d:Lam/sunrise/android/calendar/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "refresh_rate"

    const v3, 0x7f080007

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f014c

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "weather"

    const v3, 0x7f080009

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f0158

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "default_calendar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f014e

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    const-string v3, "am.sunrise.android.calendar.ui.settings.action.DEFAULT_CALENDAR"

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f014b

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "week_start"

    const v3, 0x7f08000b

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f0159

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/b/f;

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b;-><init>()V

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c012f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 84
    :cond_0
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->t(Landroid/content/Context;)V

    .line 89
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->j(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->h(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->d:Lam/sunrise/android/calendar/e;

    .line 94
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    .line 96
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 102
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 104
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 110
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v6, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/b/a;->a([Lam/sunrise/android/calendar/ui/settings/b/f;)V

    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    add-int/lit8 v0, p3, -0x1

    .line 146
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/b/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 147
    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->g()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "refresh_rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/bg;->a(Landroid/support/v4/app/i;)V

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/bh;->a(Landroid/support/v4/app/i;)V

    goto :goto_0

    .line 157
    :cond_3
    const-string v1, "week_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/bi;->a(Landroid/support/v4/app/i;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 131
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onPause()V

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->d:Lam/sunrise/android/calendar/e;

    invoke-static {p0}, Lam/sunrise/android/calendar/c;->u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 133
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0}, Lam/sunrise/android/calendar/c;->u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/accounts/Account;Lam/sunrise/android/calendar/e;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onResume()V

    .line 122
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/a;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/a;->notifyDataSetChanged()V

    .line 167
    return-void
.end method
