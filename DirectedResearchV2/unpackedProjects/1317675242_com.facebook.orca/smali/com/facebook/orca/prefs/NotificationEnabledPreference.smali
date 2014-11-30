.class public Lcom/facebook/orca/prefs/NotificationEnabledPreference;
.super Landroid/preference/DialogPreference;
.source "NotificationEnabledPreference.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/notify/NotificationSetting;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 55
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const v2, 0x7f0a00be

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 101
    if-nez p1, :cond_1

    .line 102
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 112
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    .line 113
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 115
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 116
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 109
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 110
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->b:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 44
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 45
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 48
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method private a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 83
    iput p2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/NotificationEnabledPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 91
    iget v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 92
    :goto_0
    if-eqz p1, :cond_0

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(I)V

    .line 95
    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->notifyDependencyChange(Z)V

    .line 98
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    :cond_2
    move v0, v2

    .line 95
    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0a004b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a004d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0a004e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    const v2, 0x7f0a00bb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance v0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;-><init>(Lcom/facebook/orca/prefs/NotificationEnabledPreference;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {p1, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    return-void
.end method
