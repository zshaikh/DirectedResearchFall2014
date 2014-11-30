.class Lcom/acmeaom/android/myradar/app/activity/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/myradar/a/j;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v1, 0x20002

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->showDialog(I)V

    .line 73
    return-void
.end method

.method public a(Lcom/android/vending/billing/i;)V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/android/vending/billing/i;->d:Lcom/android/vending/billing/i;

    if-ne v0, p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v1, 0x20003

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->showDialog(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public a(Lcom/android/vending/billing/i;Ljava/lang/String;Lcom/android/vending/billing/h;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_initialized"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    if-ne p2, v0, :cond_0

    .line 136
    const-string v0, "Application"

    const-string v1, "purchase"

    long-to-int v2, p4

    invoke-static {v0, v1, p1, v2}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_initialized"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 144
    const-string v0, "Application"

    const-string v1, "refund"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, p1, v2}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->c(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_initialized"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public b(Lcom/android/vending/billing/i;)V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->b(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const-string v1, "features_restore_purchases_progress"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_5

    .line 87
    const v0, 0x7f0b0023

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 88
    const-string v1, ""

    .line 89
    sget-object v0, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    if-ne p1, v0, :cond_6

    .line 90
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    if-eqz v0, :cond_7

    .line 93
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v4, 0x7f0b0015

    invoke-virtual {v1, v4}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 114
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v4, 0x7f0b0020

    invoke-virtual {v1, v4}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_2
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v4, 0x7f0b0019

    invoke-virtual {v1, v4}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_4
    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    :cond_5
    return-void

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/l;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
