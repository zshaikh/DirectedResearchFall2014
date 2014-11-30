.class public Lam/sunrise/android/calendar/reminders/AlarmReminderService;
.super Landroid/app/IntentService;
.source "AlarmReminderService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "AlarmReminderService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/reminders/d;
    .locals 6

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/reminders/e;->a:[Ljava/lang/String;

    const-string v3, "person_rsvp_status = ? AND person_is_self = ?"

    sget-object v4, Lam/sunrise/android/calendar/reminders/e;->b:[Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/reminders/e;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_1

    .line 760
    invoke-static {v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/reminders/d;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_0

    .line 766
    :goto_0
    return-object v0

    .line 764
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/reminders/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 779
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 780
    new-instance v0, Lam/sunrise/android/calendar/reminders/d;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/reminders/d;-><init>(Lam/sunrise/android/calendar/reminders/b;)V

    .line 781
    iput-object p0, v0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    .line 782
    const-string v1, "person_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/reminders/d;->b:I

    .line 783
    const-string v1, "person_firstname"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/reminders/d;->c:I

    .line 784
    const-string v1, "person_lastname"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/reminders/d;->d:I

    .line 785
    const-string v1, "person_email_1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/reminders/d;->e:I

    .line 788
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 611
    const/high16 v0, 0x24000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    const/high16 v0, 0x8000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 613
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 604
    const-string v1, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 605
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 607
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Calendar;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 583
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 585
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 586
    const-string v2, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const/high16 v0, 0x24000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 590
    return-object v0
.end method

.method private static a(Lam/sunrise/android/calendar/reminders/d;)V
    .locals 1

    .prologue
    .line 770
    if-eqz p0, :cond_0

    .line 771
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    .line 776
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 231
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/g;->a(Landroid/content/Context;)Lam/sunrise/android/calendar/reminders/g;

    move-result-object v9

    .line 233
    if-eqz v9, :cond_2

    .line 234
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 235
    invoke-static {v10}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 238
    :cond_0
    invoke-virtual {v9}, Lam/sunrise/android/calendar/reminders/g;->d()Lam/sunrise/android/calendar/reminders/h;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_1

    .line 246
    iget-boolean v0, v1, Lam/sunrise/android/calendar/reminders/h;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->c:Ljava/lang/String;

    const-string v2, "birthday"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-static {v0, v10}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    new-instance v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 249
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->a:Ljava/lang/String;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 250
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 251
    iget-boolean v0, v1, Lam/sunrise/android/calendar/reminders/h;->m:Z

    iput-boolean v0, v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 252
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 253
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->l:Ljava/util/Calendar;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 258
    iget-object v2, v1, Lam/sunrise/android/calendar/reminders/h;->a:Ljava/lang/String;

    iget-object v3, v1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    iget-object v4, v1, Lam/sunrise/android/calendar/reminders/h;->c:Ljava/lang/String;

    iget-object v6, v1, Lam/sunrise/android/calendar/reminders/h;->d:Ljava/lang/String;

    iget-object v7, v1, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Z)V

    .line 269
    :cond_1
    invoke-virtual {v9}, Lam/sunrise/android/calendar/reminders/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {v9}, Lam/sunrise/android/calendar/reminders/g;->c()V

    .line 273
    :cond_2
    return-void

    .line 253
    :cond_3
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->l:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 21

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x13

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "reminder_value"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "event_id"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "event_calendar_id"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "event_type"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "event_is_all_day"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "event_start_date"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "event_end_date"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "event_timezone"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "event_title"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "occurrence_is_all_day"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "occurrence_start_date"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "occurrence_end_date"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "location_latitude"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "location_longitude"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "location_name"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "location_street"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "location_city"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "location_state"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "location_country"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 133
    if-nez v10, :cond_0

    .line 134
    const-string v1, "AlarmReminderService"

    const-string v2, "onEventReminderFired(uri=%s): {1} Reminder not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "AlarmReminderService"

    const-string v2, "onEventReminderFired(uri=%s): {2} Reminder not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const-string v1, "event_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const-string v1, "AlarmReminderService"

    const-string v2, "onEventReminderFired(uri=%s): {3} Reminder not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 150
    :cond_3
    const-string v1, "reminder_value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 151
    const-string v1, "event_calendar_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 152
    const-string v2, "event_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 153
    const-string v3, "event_is_all_day"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 154
    const-string v3, "event_title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 155
    const-string v3, "occurrence_start_date"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 156
    const-string v3, "occurrence_end_date"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 157
    const-string v3, "location_latitude"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 158
    const-string v3, "location_longitude"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 159
    const-string v3, "location_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 160
    const-string v3, "location_street"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 161
    const-string v3, "location_city"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 162
    const-string v3, "location_state"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 163
    const-string v3, "location_country"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 165
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    new-instance v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v6}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 169
    iput-object v3, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 170
    iput-object v4, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 171
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 173
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v1, v7

    .line 174
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v19, 0x3e8

    mul-long v7, v7, v19

    .line 176
    const-wide/16 v19, 0x0

    cmp-long v11, v1, v19

    if-lez v11, :cond_b

    .line 177
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v11, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 178
    iget-object v11, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    invoke-virtual {v11, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gez v1, :cond_a

    .line 181
    const/4 v1, 0x0

    iput-object v1, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 187
    :goto_3
    new-instance v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v8}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>()V

    .line 188
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 189
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 190
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 191
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 192
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 193
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 194
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 201
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_6
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 207
    iget-object v2, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_7
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 211
    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    .line 216
    :cond_8
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Z)V

    goto/16 :goto_1

    .line 171
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 183
    :cond_a
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 184
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_3

    .line 222
    :cond_b
    const-string v1, "AlarmReminderService"

    const-string v2, "onAlarmReminderFired: EventId is still valid but the previously generated occurrence is not valid anymore. Aborting reminder."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/app/an;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    .line 486
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 487
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 488
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 489
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 491
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    const-string v2, "Authorization"

    invoke-static {p1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-eqz v2, :cond_2

    .line 500
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 514
    :goto_0
    if-eqz v2, :cond_1

    .line 516
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 523
    :cond_1
    :goto_1
    const v1, 0x7f020140

    invoke-virtual {p3, v1}, Landroid/support/v4/app/an;->a(I)Landroid/support/v4/app/an;

    .line 525
    if-eqz v0, :cond_4

    .line 526
    invoke-virtual {p3, v0}, Landroid/support/v4/app/an;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/an;

    .line 536
    :goto_2
    return-void

    :cond_2
    move-object v0, v1

    .line 502
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 505
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 514
    if-eqz v2, :cond_5

    .line 516
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 517
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 507
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 508
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 514
    if-eqz v2, :cond_5

    .line 516
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 517
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 510
    :catch_4
    move-exception v0

    move-object v2, v1

    .line 511
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 514
    if-eqz v2, :cond_5

    .line 516
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 517
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 519
    goto :goto_1

    .line 514
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_3

    .line 516
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 519
    :cond_3
    :goto_7
    throw v0

    .line 529
    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020104

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/an;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/an;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 530
    :catch_6
    move-exception v0

    goto :goto_2

    .line 517
    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_7

    .line 514
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 510
    :catch_9
    move-exception v0

    goto :goto_5

    .line 507
    :catch_a
    move-exception v0

    goto :goto_4

    .line 504
    :catch_b
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/an;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 665
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/reminders/d;

    move-result-object v2

    .line 667
    if-nez v2, :cond_0

    .line 714
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 672
    iget-object v0, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 673
    const/4 v0, 0x0

    .line 675
    iget-object v3, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 676
    invoke-static {v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->b(Lam/sunrise/android/calendar/reminders/d;)Lam/sunrise/android/calendar/reminders/c;

    move-result-object v0

    .line 677
    const/4 v3, 0x0

    iget-object v4, v0, Lam/sunrise/android/calendar/reminders/c;->d:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 679
    iget-object v0, v0, Lam/sunrise/android/calendar/reminders/c;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 691
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 692
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const v4, 0x7f020097

    array-length v1, v1

    if-ne v1, v5, :cond_3

    const v1, 0x7f0f00fb

    :goto_2
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v3}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p4, v4, v1, v3}, Landroid/support/v4/app/an;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    .line 703
    if-eqz v0, :cond_1

    .line 704
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 705
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 707
    const v0, 0x7f020096

    const v3, 0x7f0f00fa

    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5, v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p4, v0, v3, v1}, Landroid/support/v4/app/an;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    .line 713
    :cond_1
    invoke-static {v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Lam/sunrise/android/calendar/reminders/d;)V

    goto/16 :goto_0

    .line 686
    :cond_2
    invoke-static {v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->b(Lam/sunrise/android/calendar/reminders/d;)Lam/sunrise/android/calendar/reminders/c;

    move-result-object v3

    .line 687
    iget-object v4, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iget-object v3, v3, Lam/sunrise/android/calendar/reminders/c;->d:Ljava/lang/String;

    aput-object v3, v1, v4

    .line 688
    iget-object v3, v2, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 697
    :cond_3
    const v1, 0x7f0f00fc

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Z)V
    .locals 7

    .prologue
    .line 408
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    if-nez p8, :cond_3

    .line 414
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    new-instance v2, Landroid/support/v4/app/an;

    invoke-direct {v2, v1}, Landroid/support/v4/app/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p6}, Landroid/support/v4/app/an;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Z)Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x1f4

    const/16 v5, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/an;->a(III)Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0701b7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Landroid/net/Uri;)Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/app/an;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/an;->a(J)Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {v1, p5}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    move-result-object v2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ffffff"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {p4, v4, p6, v5}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&background=false&placeholder=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 447
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/app/an;)V

    .line 459
    :goto_1
    invoke-direct {p0, p7, v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Landroid/support/v4/app/an;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 460
    invoke-virtual {v2, v0}, Landroid/support/v4/app/an;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    .line 465
    :goto_2
    invoke-direct {p0, p2, p3, p6, v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/an;)V

    .line 467
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 470
    const-string v1, "%d-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x141f

    invoke-virtual {v2}, Landroid/support/v4/app/an;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 477
    return-void

    .line 419
    :cond_0
    iget-object v0, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 420
    if-nez v0, :cond_1

    .line 421
    const/16 v0, 0xc

    .line 423
    :cond_1
    const-string v2, "%d:%02d %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p5, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM"

    :goto_3
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "PM"

    goto :goto_3

    .line 428
    :cond_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f00fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 450
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020104

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_4
    const v3, 0x7f020140

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(I)Landroid/support/v4/app/an;

    goto/16 :goto_1

    .line 462
    :cond_5
    invoke-virtual {v2, v0}, Landroid/support/v4/app/an;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    goto/16 :goto_2

    .line 451
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 5

    .prologue
    const/16 v3, 0x1f4

    const/4 v4, 0x1

    .line 541
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 548
    new-instance v1, Landroid/support/v4/app/an;

    invoke-direct {v1, v0}, Landroid/support/v4/app/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/support/v4/app/an;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/support/v4/app/an;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/support/v4/app/an;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->a(Z)Landroid/support/v4/app/an;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/support/v4/app/an;->a(III)Landroid/support/v4/app/an;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Landroid/net/Uri;)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/app/an;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/an;->a(J)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-static {p0, p6}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;Ljava/util/Calendar;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    move-result-object v1

    .line 559
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/app/an;)V

    .line 572
    :goto_0
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 575
    invoke-virtual {p6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit16 v2, v2, 0x141f

    invoke-virtual {v1}, Landroid/support/v4/app/an;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 580
    return-void

    .line 563
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020104

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_1
    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(I)Landroid/support/v4/app/an;

    goto :goto_0

    .line 564
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Landroid/support/v4/app/an;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 618
    if-eqz p1, :cond_4

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    const/4 v0, 0x0

    .line 623
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 624
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v0, "geo:0,0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "q"

    iget-object v4, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 629
    :cond_0
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 631
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "geo:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 637
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "q"

    iget-object v4, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 644
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 645
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v4/app/an;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;

    .line 647
    if-eqz v0, :cond_3

    .line 648
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 649
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 652
    const v0, 0x7f020098

    const v3, 0x7f0f00fd

    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v3, v2}, Landroid/support/v4/app/an;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/an;

    :cond_3
    move v0, v1

    .line 659
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lam/sunrise/android/calendar/reminders/d;)Lam/sunrise/android/calendar/reminders/c;
    .locals 3

    .prologue
    .line 792
    new-instance v0, Lam/sunrise/android/calendar/reminders/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/reminders/c;-><init>(Lam/sunrise/android/calendar/reminders/b;)V

    .line 793
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/d;->b:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/reminders/c;->a:Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/d;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/reminders/c;->b:Ljava/lang/String;

    .line 795
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/d;->d:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/reminders/c;->c:Ljava/lang/String;

    .line 796
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/d;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/d;->e:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/reminders/c;->d:Ljava/lang/String;

    .line 797
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 282
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/g;->a(Landroid/content/Context;)Lam/sunrise/android/calendar/reminders/g;

    move-result-object v7

    .line 284
    if-eqz v7, :cond_4

    .line 285
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 286
    invoke-static {v6}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 288
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 292
    :cond_0
    invoke-virtual {v7}, Lam/sunrise/android/calendar/reminders/g;->d()Lam/sunrise/android/calendar/reminders/h;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_2

    .line 300
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->c:Ljava/lang/String;

    const-string v2, "birthday"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, v1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-static {v0, v6}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/reminders/h;->a:Ljava/lang/String;

    iget-object v1, v1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "person_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "person_firstname"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "person_lastname"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "person_email_1"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "person_thumbnail_url"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_2

    .line 316
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const-string v1, "person_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 319
    const-string v2, "person_firstname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 320
    const-string v3, "person_lastname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 321
    const-string v4, "person_email_1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 322
    const-string v5, "person_thumbnail_url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 324
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    new-instance v10, Lam/sunrise/android/calendar/reminders/f;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lam/sunrise/android/calendar/reminders/f;-><init>(Lam/sunrise/android/calendar/reminders/AlarmReminderService;Lam/sunrise/android/calendar/reminders/b;)V

    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lam/sunrise/android/calendar/reminders/f;->a:Ljava/lang/String;

    .line 338
    :goto_0
    iput-object v2, v10, Lam/sunrise/android/calendar/reminders/f;->b:Ljava/lang/String;

    .line 340
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 341
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    .line 354
    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_2
    invoke-virtual {v7}, Lam/sunrise/android/calendar/reminders/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-static {v9}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 371
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/reminders/f;

    .line 372
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lam/sunrise/android/calendar/reminders/f;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 373
    iget-object v3, v0, Lam/sunrise/android/calendar/reminders/f;->a:Ljava/lang/String;

    .line 375
    iget-object v5, v0, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    move-object v2, v4

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 397
    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 400
    :cond_3
    invoke-virtual {v7}, Lam/sunrise/android/calendar/reminders/g;->c()V

    .line 402
    :cond_4
    return-void

    .line 335
    :cond_5
    iput-object v1, v10, Lam/sunrise/android/calendar/reminders/f;->a:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 348
    invoke-static {v4}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    goto :goto_1

    .line 351
    :cond_7
    const/4 v1, 0x0

    iput-object v1, v10, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    goto :goto_1

    .line 377
    :cond_8
    const/4 v2, 0x0

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const/4 v1, 0x1

    .line 380
    const/4 v0, 0x0

    move v3, v1

    move-object v1, v2

    move v2, v0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 381
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/reminders/f;

    .line 382
    if-eqz v3, :cond_9

    .line 383
    const/4 v3, 0x0

    .line 387
    :goto_4
    iget-object v5, v0, Lam/sunrise/android/calendar/reminders/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    if-nez v1, :cond_b

    iget-object v5, v0, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 389
    iget-object v0, v0, Lam/sunrise/android/calendar/reminders/f;->c:Ljava/lang/String;

    .line 380
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    .line 385
    :cond_9
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 392
    :cond_a
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f010f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v2, v3

    goto :goto_2

    :cond_b
    move-object v0, v1

    goto :goto_5
.end method

.method private c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 717
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "lookup"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "has_phone_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "data1 LIKE ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_1

    .line 732
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 734
    const-string v0, "lookup"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    const-string v0, "has_phone_number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v6

    .line 737
    :goto_0
    const-string v6, "data1"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 742
    if-eqz v0, :cond_0

    .line 743
    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 746
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_1
    return-object v5

    :cond_2
    move v0, v7

    .line 735
    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    const-string v0, "AlarmReminderService"

    const-string v1, "onHandleIntent: intent == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-string v0, "AlarmReminderService"

    const-string v1, "onHandleIntent: action == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "am.sunrise.android.calendar.action.ALARM_REMINDER_FIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    const-string v1, "AlarmReminderService"

    const-string v2, "onHandleIntent: action=%s data == null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-direct {p0, v1, v2}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v2, "am.sunrise.android.calendar.action.REMINDER_ALLDAYS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_5
    const-string v2, "am.sunrise.android.calendar.action.REMINDER_BIRTHDAYS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/reminders/AlarmReminderService;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
