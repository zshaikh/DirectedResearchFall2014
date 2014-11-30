.class public Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadViewNotificationsItem.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/prefs/UiCounters;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/orca/notify/NotificationSetting;

.field private m:Lcom/facebook/orca/notify/NotificationSetting;

.field private n:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 66
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 67
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 68
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    .line 70
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(I)V

    .line 72
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d:Landroid/view/View;

    .line 73
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    .line 74
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Landroid/widget/TextView;

    .line 80
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 115
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 128
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Z)V

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    if-eq p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->g()V

    .line 136
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 117
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->b:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v5, 0x0

    const v7, 0x7f020010

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Landroid/widget/TextView;

    invoke-static {v0, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Landroid/widget/TextView;

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 184
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const v2, 0x7f0a0050

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 189
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v7, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 193
    :cond_5
    if-eqz p1, :cond_6

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v7, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 196
    :cond_6
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const v2, 0x7f0a0055

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v7, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v7, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2
.end method

.method private c()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    const v2, 0x7f0a0056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const v2, 0x7f0a0059

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 147
    :goto_0
    const v2, 0x7f0a005b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const v0, 0x7f0a0004

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 158
    return-void

    .line 145
    :cond_0
    const v2, 0x7f0a005a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Lcom/facebook/orca/notify/NotificationSetting;

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Z)V

    .line 111
    return-void
.end method

.method public setDetailsTab(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    .line 105
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Ljava/lang/String;

    .line 101
    return-void
.end method
