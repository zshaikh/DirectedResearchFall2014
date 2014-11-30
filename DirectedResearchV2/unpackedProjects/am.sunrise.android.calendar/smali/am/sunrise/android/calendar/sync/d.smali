.class public Lam/sunrise/android/calendar/sync/d;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string v1, "am.sunrise.android.calendar.extra.RESET_ACCOUNT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method private static a(Landroid/content/Context;IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/support/v4/app/an;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/an;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(I)Landroid/support/v4/app/an;

    move-result-object v1

    const v2, 0x7f0f0109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    const v2, 0x7f0f010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    const v2, 0x7f0f0105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/am;

    invoke-direct {v2}, Landroid/support/v4/app/am;-><init>()V

    const v3, 0x7f0f0101

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/am;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/au;)Landroid/support/v4/app/an;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/an;->a(Z)Landroid/support/v4/app/an;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/app/an;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(J)Landroid/support/v4/app/an;

    move-result-object v0

    invoke-static {p0}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    move-result-object v1

    .line 92
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 94
    const/16 v2, 0x1092

    invoke-virtual {v1}, Landroid/support/v4/app/an;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    const v0, 0x7f0f010a

    const v1, 0x7f0f010e

    const v2, 0x7f0f0106

    const v3, 0x7f0f0102

    invoke-static {p0, v0, v1, v2, v3}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;IIII)V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V
    .locals 5

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 36
    sget-object v0, Lam/sunrise/android/calendar/sync/e;->a:[I

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    const-string v0, "NotificationHelper"

    const-string v1, "Unsupported error \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const v3, 0x7f0f0108

    .line 39
    const v2, 0x7f0f010c

    .line 40
    const v1, 0x7f0f0104

    .line 41
    const v0, 0x7f0f0100

    .line 64
    :goto_1
    invoke-static {v4, v3, v2, v1, v0}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;IIII)V

    goto :goto_0

    .line 45
    :pswitch_1
    const v3, 0x7f0f0107

    .line 46
    const v2, 0x7f0f010b

    .line 47
    const v1, 0x7f0f0103

    .line 48
    const v0, 0x7f0f00ff

    .line 49
    goto :goto_1

    .line 52
    :pswitch_2
    const v3, 0x7f0f0109

    .line 53
    const v2, 0x7f0f010d

    .line 54
    const v1, 0x7f0f0105

    .line 55
    const v0, 0x7f0f0101

    .line 56
    goto :goto_1

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
