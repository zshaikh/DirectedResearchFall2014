.class public Lcom/facebook/orca/notify/NotificationSettingsUtil;
.super Ljava/lang/Object;
.source "NotificationSettingsUtil.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;
    .locals 4

    .prologue
    .line 32
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/notify/NotificationSetting;)Z
    .locals 6

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v0

    .line 39
    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Date;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 50
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 54
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 56
    if-ge v1, v3, :cond_0

    .line 57
    sub-int v1, v3, v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/16 v2, 0x20

    sub-int v1, v2, v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/notify/NotificationSetting;)Z
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v0

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
