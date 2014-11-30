.class public Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadAlertRateLimitView.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/cache/DataCache;

.field private d:Lcom/facebook/orca/prefs/UiCounters;

.field private e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/orca/prefs/PrefKey;

.field private h:Lcom/facebook/orca/threads/MessagesCollection;

.field private i:Lcom/facebook/orca/compose/ComposeMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b()V

    .line 60
    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 123
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute_rate_limit_dismissed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 112
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setVisibility(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private f()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v3, "thread_mute_rate_limit_dismissed"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/prefs/UiCounters;->b(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-wide v4, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v6

    .line 169
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v3, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v2, v3, :cond_1

    move v0, v6

    .line 134
    goto :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v6

    .line 147
    goto :goto_0

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v3, "thread_mute"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    move v0, v6

    .line 151
    goto :goto_0

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v3, "thread_mute"

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    move v0, v6

    .line 156
    goto :goto_0

    .line 160
    :cond_5
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v3, "thread_mute"

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/prefs/UiCounters;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    move v0, v6

    .line 161
    goto :goto_0

    .line 165
    :cond_6
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    .line 166
    goto :goto_0

    .line 169
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    if-nez v0, :cond_0

    move v0, v7

    .line 194
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    sget-wide v5, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 179
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 180
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 189
    :cond_2
    if-lt v4, v8, :cond_1

    move v0, v4

    .line 194
    :goto_1
    if-lt v0, v8, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 98
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g:Lcom/facebook/orca/prefs/PrefKey;

    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 93
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 64
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 65
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 66
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c:Lcom/facebook/orca/cache/DataCache;

    .line 67
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    .line 69
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(I)V

    .line 71
    new-instance v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$1;-><init>(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;-><init>(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 102
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 103
    return-void
.end method
