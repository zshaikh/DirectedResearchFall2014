.class public Lcom/acmeaom/android/myradar/app/notifications/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private b:Lcom/acmeaom/android/myradar/app/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/acmeaom/android/myradar/app/notifications/f;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/notifications/f;-><init>(Lcom/acmeaom/android/myradar/app/notifications/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/notifications/e;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f02003a

    .line 72
    invoke-static {}, Lcom/acmeaom/android/myradar/app/notifications/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/support/v4/app/af;

    invoke-direct {v1, p0}, Landroid/support/v4/app/af;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v1, v5}, Landroid/support/v4/app/af;->a(I)Landroid/support/v4/app/af;

    .line 84
    const-string v2, "text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Landroid/support/v4/app/af;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/af;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/af;->a(J)Landroid/support/v4/app/af;

    .line 87
    invoke-virtual {v1}, Landroid/support/v4/app/af;->a()Landroid/app/Notification;

    move-result-object v1

    .line 88
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 89
    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 93
    const/16 v0, 0x12

    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 97
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03000c

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 98
    const v3, 0x7f08003c

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 99
    const v3, 0x7f08003d

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    const v3, 0x7f08003e

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f08003f

    const-string v3, "hh:mm a"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 104
    invoke-static {p1}, Lcom/acmeaom/android/myradar/app/notifications/e;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 107
    iget v0, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 110
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 112
    const v2, 0x7f08004f

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 94
    :cond_2
    const/4 v0, -0x3

    goto :goto_1
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/notifications/e;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/notifications/e;->c()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 116
    const-string v0, "play_emergency_sound"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifications_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "registering"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/notifications/e;->b:Lcom/acmeaom/android/myradar/app/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/c;->a()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/notifications/b;->a(Landroid/location/Location;)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "unregistering"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/acmeaom/android/myradar/app/notifications/b;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/notifications/e;->c()V

    .line 51
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/notifications/e;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 54
    return-void
.end method

.method public a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c()Lcom/acmeaom/android/myradar/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/notifications/e;->b:Lcom/acmeaom/android/myradar/app/c;

    .line 47
    return-void
.end method
