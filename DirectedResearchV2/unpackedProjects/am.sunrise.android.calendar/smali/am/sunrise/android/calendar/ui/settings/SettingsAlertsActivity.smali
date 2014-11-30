.class public Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;
.super Lam/sunrise/android/calendar/ui/settings/b;
.source "SettingsAlertsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final a:[Lam/sunrise/android/calendar/ui/settings/b/f;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lam/sunrise/android/calendar/ui/settings/b/a;


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

    const-string v2, "default_reminder_value"

    const v3, 0x7f080005

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f0152

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "allday_reminder_value"

    const v3, 0x7f080001

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f0147

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const-string v2, "birthdays_reminder_value"

    const v3, 0x7f080003

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    const v2, 0x7f0f0148

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/b/f;

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b;-><init>()V

    .line 208
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

    .line 67
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 73
    :cond_0
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->n(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->o(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->p(Landroid/content/Context;)V

    .line 81
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    .line 83
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 89
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 91
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 97
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v6, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 99
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/b/a;->a([Lam/sunrise/android/calendar/ui/settings/b/f;)V

    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->b:Landroid/widget/ListView;

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
    .line 136
    add-int/lit8 v0, p3, -0x1

    .line 138
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/b/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 139
    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->g()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string v1, "default_reminder_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/ak;->a(Landroid/support/v4/app/i;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "allday_reminder_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/ai;->a(Landroid/support/v4/app/i;)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v1, "birthdays_reminder_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/aj;->a(Landroid/support/v4/app/i;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 117
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onPause()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onResume()V

    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 111
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->c:Lam/sunrise/android/calendar/ui/settings/b/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/a;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onStop()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsAlertsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method
