.class public Lam/sunrise/android/calendar/provider/Content;
.super Lam/sunrise/android/calendar/provider/w;
.source "Content.java"


# static fields
.field private static final d:Landroid/content/UriMatcher;


# instance fields
.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lam/sunrise/android/calendar/provider/Content;->e()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/provider/Content;->d:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/w;-><init>()V

    .line 217
    new-instance v0, Lam/sunrise/android/calendar/provider/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/provider/a;-><init>(Lam/sunrise/android/calendar/provider/Content;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->e:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->f:Landroid/os/Handler;

    .line 232
    new-instance v0, Lam/sunrise/android/calendar/provider/b;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/provider/b;-><init>(Lam/sunrise/android/calendar/provider/Content;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->g:Ljava/lang/Runnable;

    .line 292
    return-void
.end method

.method private a(Landroid/net/Uri;I)Lam/sunrise/android/calendar/b/j;
    .locals 10

    .prologue
    const/4 v3, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1078
    new-instance v0, Lam/sunrise/android/calendar/b/j;

    invoke-direct {v0}, Lam/sunrise/android/calendar/b/j;-><init>()V

    .line 1079
    sparse-switch p2, :sswitch_data_0

    .line 1331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :sswitch_0
    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    .line 1324
    :cond_0
    :goto_0
    return-object v0

    .line 1085
    :sswitch_1
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    const-string v2, "connection"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "connection_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto :goto_0

    .line 1091
    :sswitch_2
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    const-string v2, "calendar"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "calendar_connection_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto :goto_0

    .line 1097
    :sswitch_3
    const-string v1, "connection JOIN calendar ON calendar.calendar_connection_id = connection.connection_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "calendar._id"

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto :goto_0

    .line 1102
    :sswitch_4
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    const-string v3, "connection JOIN calendar ON calendar.calendar_connection_id = connection.connection_id"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "calendar._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "connection.connection_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "calendar.calendar_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto :goto_0

    .line 1111
    :sswitch_5
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    const-string v2, "suggested_people"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "suggested_people.suggested_people_calendar_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto :goto_0

    .line 1117
    :sswitch_6
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    const-string v2, "event"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "event_calendar_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1123
    :sswitch_7
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1125
    const-string v3, "event JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "event._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "event.event_calendar_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "event.event_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1134
    :sswitch_8
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    const-string v3, "person"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "person._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "person.person_calendar_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_event_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_kind = ?"

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1145
    :sswitch_9
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1147
    const-string v3, "person"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "person._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "person.person_calendar_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_event_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_kind = ?"

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1156
    :sswitch_a
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1158
    const-string v3, "person"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "person._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "person.person_calendar_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_event_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "person.person_kind = ?"

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1167
    :sswitch_b
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1168
    const-string v1, "event JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id LEFT JOIN person ON person.person_calendar_id = event_calendar_id AND person.person_event_id = event_id AND person.person_kind = \'3\'"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "event._id"

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "event_attendees"

    const-string v2, "GROUP_CONCAT(person_email_1, \'|\')"

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "event.event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->b(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1176
    :cond_1
    const-string v1, "event JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "event._id"

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v8

    const-string v3, "0"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1183
    :sswitch_c
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1184
    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1185
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 1186
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1187
    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1188
    invoke-virtual {v2, v3, v9}, Ljava/util/Calendar;->add(II)V

    .line 1189
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v3

    .line 1190
    invoke-static {v3, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    invoke-static {v3, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 1193
    const-string v3, "occurrence JOIN event ON event.event_id = occurrence.occurrence_id JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "occurrence._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "occurrence_date"

    const-string v4, "date(occurrence_start_date, \'unixepoch\', \'localtime\')"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "calendar_is_enabled = ?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "calendar_reminders = ?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "event_reminders != \'\' OR event_type LIKE ? OR event_is_all_day = ?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "%birthday%"

    aput-object v5, v4, v8

    const-string v5, "1"

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "occurrence_date BETWEEN ? AND ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1209
    :sswitch_d
    const-string v1, "startDate"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    const-string v2, "endDate"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    const-string v3, "occurrence JOIN event ON event.event_id = occurrence.occurrence_id JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN person ON person.person_calendar_id = event.event_calendar_id AND person.person_event_id = event.event_id AND person.person_kind = \'3\' LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "_id"

    const-string v5, "occurrence._id"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_emails"

    const-string v5, "GROUP_CONCAT(person_email_1, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_thumbnail_urls"

    const-string v5, "GROUP_CONCAT(person_thumbnail_url, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_first_names"

    const-string v5, "GROUP_CONCAT(person_firstname, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_last_names"

    const-string v5, "GROUP_CONCAT(person_lastname, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_names"

    const-string v5, "GROUP_CONCAT(person_name, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_attendee_is_self"

    const-string v5, "GROUP_CONCAT(person_is_self, \'|\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v8

    const-string v6, "0"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence.occurrence_id, occurrence.occurrence_start_date"

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/b/j;->b(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    .line 1230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1231
    const-string v3, "occurrence_date"

    const-string v4, "date(occurrence_start_date, \'unixepoch\', \'localtime\')"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_date BETWEEN ? AND ?"

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v8

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    goto/16 :goto_0

    .line 1240
    :sswitch_e
    const-string v1, "startDate"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    const-string v2, "endDate"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    const-string v3, "occurrence"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_date"

    const-string v5, "date(occurrence_start_date, \'unixepoch\', \'localtime\')"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "occurrence_count"

    const-string v5, "COUNT(occurrence_start_date)"

    invoke-virtual {v3, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v3

    const-string v4, "STRFTIME(\'%Y-%m-%d\', occurrence_date)"

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/b/j;->b(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    .line 1249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1250
    const-string v3, "occurrence_date BETWEEN ? AND ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    goto/16 :goto_0

    .line 1256
    :sswitch_f
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 1257
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1258
    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1259
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    const-string v2, "occurrence JOIN event ON event.event_id = occurrence.occurrence_id LEFT JOIN event_extras ON event_extras.event_extra_event_id = event.event_id AND event_extras.event_extra_calendar_id = event.event_calendar_id JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id LEFT JOIN person ON person.person_calendar_id = event_calendar_id AND person.person_event_id = event_id AND person.person_kind = \'1\'"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "_id"

    const-string v3, "event._id"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_distinct"

    const-string v3, "min(occurrence_start_date)"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_start_date"

    const-string v3, "datetime(occurrence_start_date, \'unixepoch\', \'localtime\')"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_end_date"

    const-string v3, "datetime(occurrence_end_date, \'unixepoch\', \'localtime\')"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_facebook_id"

    const-string v3, "person_facebook_id"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_name"

    const-string v3, "person_name"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_email_1"

    const-string v3, "person_email_1"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_email_2"

    const-string v3, "person_email_2"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_is_self"

    const-string v3, "person_is_self"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_firstname"

    const-string v3, "person_firstname"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_lastname"

    const-string v3, "person_lastname"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_thumbnail_url"

    const-string v3, "person_thumbnail_url"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_inviter_cover_url"

    const-string v3, "person_cover_url"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v8

    const-string v4, "0"

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "calendar_is_enabled = ?"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "event_user_rsvp_status = ? AND event_pending_actions NOT LIKE ?"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "notReplied"

    aput-object v4, v3, v8

    const-string v4, "%\"RSVP\"%"

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "inbox_event_start_date >= ? OR inbox_event_end_date >= ?"

    new-array v3, v9, [Ljava/lang/String;

    aput-object v1, v3, v8

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->b(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1302
    :sswitch_10
    const-string v1, "reminders LEFT JOIN event ON event.event_id = reminders.reminder_event_id LEFT JOIN occurrence ON occurrence.occurrence_id = event.event_id AND occurrence.occurrence_start_date = reminders.reminder_occurrence_start_date LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "reminders._id"

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1307
    :sswitch_11
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1308
    const-string v2, "reminders LEFT JOIN event ON event.event_id = reminders.reminder_event_id LEFT JOIN occurrence ON occurrence.occurrence_id = event.event_id AND occurrence.occurrence_start_date = reminders.reminder_occurrence_start_date LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "_id"

    const-string v3, "reminders._id"

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v2, "reminder_event_id = ?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1314
    :sswitch_12
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->b(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1316
    const-string v4, "reminders LEFT JOIN event ON event.event_id = reminders.reminder_event_id LEFT JOIN occurrence ON occurrence.occurrence_id = event.event_id AND occurrence.occurrence_start_date = reminders.reminder_occurrence_start_date LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v4, "_id"

    const-string v5, "reminders._id"

    invoke-virtual {v0, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v4, "reminder_event_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-virtual {v0, v4, v5}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "reminder_alarm_time = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-virtual {v0, v1, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1323
    :sswitch_13
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/f;->a(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1324
    const-string v3, "occurrence JOIN event ON event.event_id = occurrence.occurrence_id JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN person ON person.person_calendar_id = event.event_calendar_id AND person.person_event_id = event.event_id AND person.person_kind = \'3\' LEFT JOIN location ON location.location_event_id = event.event_id"

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "_id"

    const-string v4, "event._id"

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v3, "occurrence_start_date = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    const-string v1, "event_type LIKE ?"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "%birthday%"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v0

    goto/16 :goto_0

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_a
        0x28 -> :sswitch_b
        0x29 -> :sswitch_c
        0x32 -> :sswitch_d
        0x33 -> :sswitch_e
        0x3c -> :sswitch_f
        0x46 -> :sswitch_10
        0x47 -> :sswitch_11
        0x48 -> :sswitch_12
        0x50 -> :sswitch_13
    .end sparse-switch
.end method

.method static synthetic a(Lam/sunrise/android/calendar/provider/Content;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/Content;->h()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    return-void
.end method

.method private a(Ljava/util/TimeZone;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    const-string v0, "Content"

    const-string v1, "refreshing Occurrences..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Lam/sunrise/android/calendar/b/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/b/c;-><init>()V

    .line 315
    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 317
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-static {v2, v3, v1, p1}, Lam/sunrise/android/calendar/provider/r;->a(Landroid/content/Context;Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;)V

    .line 321
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 326
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v1

    const-string v2, "timezone_id"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "Content"

    const-string v2, "Occurrences refreshed in %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    return-void

    .line 323
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 349
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->f:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/Content;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->f:Landroid/os/Handler;

    iget-object v3, p0, Lam/sunrise/android/calendar/provider/Content;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void

    .line 350
    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/provider/Content;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/Content;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/provider/Content;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static e()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 84
    const-string v1, "am.sunrise.android.calendar"

    .line 87
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "connections"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "connections/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "connections/*/calendars"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/synctoken"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/visibility"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/reminders"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/suggested_people"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/inviter"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/organizer"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/attendees"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/attendees/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/locations"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events_sources/*/exceptions"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/invitation_seen"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "calendars/*/events/*/rsvp"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "events"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "events/reminders"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "occurrences"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "occurrences/count"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "inbox"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "reminders"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "reminders/*"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "reminders/*/#"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    const-string v1, "am.sunrise.android.calendar"

    const-string v2, "birthdays/*"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lam/sunrise/android/calendar/provider/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/provider/c;-><init>(Lam/sunrise/android/calendar/provider/Content;Lam/sunrise/android/calendar/provider/a;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method private g()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 333
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v0

    const-string v1, "timezone_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v5, "Content"

    const-string v6, "onTimeZoneChanged: previousTimeZone=%s timeZone=%s"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    aput-object v0, v7, v2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v5, v6, v7}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    :cond_0
    invoke-direct {p0, v4}, Lam/sunrise/android/calendar/provider/Content;->a(Ljava/util/TimeZone;)V

    move v0, v3

    .line 341
    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    .line 334
    goto :goto_0

    :cond_2
    move v0, v2

    .line 341
    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 357
    const-string v0, "Content"

    const-string v1, "Broadcasting update"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    sget-object v2, Lam/sunrise/android/calendar/provider/e;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 18

    .prologue
    .line 864
    if-nez p5, :cond_0

    const/4 v2, 0x1

    move v10, v2

    .line 865
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 866
    sget-object v2, Lam/sunrise/android/calendar/provider/Content;->d:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 867
    const/4 v12, 0x0

    .line 868
    sparse-switch v2, :sswitch_data_0

    .line 1070
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :cond_0
    const/4 v2, 0x0

    move v10, v2

    goto :goto_0

    .line 870
    :sswitch_0
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12

    .line 872
    if-lez v12, :cond_1

    .line 874
    sget-object v2, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 875
    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 876
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1074
    :cond_1
    :goto_1
    return v12

    .line 881
    :sswitch_1
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/provider/n;->c(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12

    .line 883
    if-lez v12, :cond_1

    .line 885
    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 886
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .line 891
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    const-string v4, "calendar_sync_token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 898
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    const-string v4, "calendar_is_enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Z)I

    move-result v12

    .line 901
    if-lez v12, :cond_1

    .line 903
    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 904
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 905
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto :goto_1

    .line 912
    :sswitch_4
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    const-string v4, "calendar_reminders"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Z)I

    move-result v12

    .line 915
    if-lez v12, :cond_1

    .line 917
    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 918
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 919
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 924
    :sswitch_5
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 925
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 926
    if-nez p5, :cond_1

    .line 927
    const-string v2, "event_calendar_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 928
    const-string v2, "Content"

    const-string v3, "update: calendarId=%s eventId=%s newCalendarId=%s values=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    const/4 v5, 0x2

    aput-object v16, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    const/4 v11, 0x0

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "event_pending_actions"

    aput-object v6, v4, v5

    const-string v5, "event_calendar_id = ? AND event_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 938
    if-eqz v3, :cond_9

    .line 939
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 940
    const-string v2, "event_pending_actions"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 942
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 945
    :goto_3
    const/4 v3, 0x0

    .line 947
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 951
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v2, v14, v15, v0}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 957
    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    .line 988
    :goto_5
    if-eqz v3, :cond_2

    .line 989
    const/4 v8, 0x1

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v4

    const-string v5, "timezone_id"

    invoke-virtual {v4, v5}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v5, v16

    move-object v6, v15

    invoke-static/range {v2 .. v7}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 995
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;)V

    .line 998
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 999
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1000
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1002
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    move v2, v8

    :cond_2
    move v12, v2

    .line 1004
    goto/16 :goto_1

    .line 957
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 963
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "event"

    const-string v5, "event_calendar_id = ? AND event_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 968
    const/4 v2, 0x1

    if-ne v4, v2, :cond_7

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;)Z

    move-result v3

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v15, v1, v3}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Z)Z

    move-result v2

    move v3, v2

    move v2, v4

    goto :goto_5

    .line 977
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event"

    const-string v4, "event_calendar_id = ? AND event_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 984
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;)Z

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v15, v1, v4}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Z)Z

    move-result v3

    goto/16 :goto_5

    .line 1008
    :sswitch_6
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lam/sunrise/android/calendar/provider/n;->g(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12

    .line 1011
    if-lez v12, :cond_1

    .line 1013
    sget-object v4, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1014
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 1021
    :sswitch_7
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v4, v2, v3}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1024
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1025
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 1029
    :sswitch_8
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1030
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1031
    const-string v2, "event_user_rsvp_status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    if-nez p5, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    const-string v4, "event_user_rsvp_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v2, v4}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_1

    .line 1037
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    const-string v4, "person_rsvp_status"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "person"

    const-string v7, "person_calendar_id = ? AND person_event_id = ? AND person_kind = ? AND person_is_self = ?"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "1"

    aput-object v11, v8, v9

    invoke-virtual {v2, v4, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v4

    const-string v7, "timezone_id"

    invoke-virtual {v4, v7}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;)V

    .line 1059
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1060
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1061
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1062
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1064
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    :cond_6
    move v2, v12

    goto/16 :goto_6

    :cond_7
    move v2, v4

    goto/16 :goto_5

    :cond_8
    move-object v2, v11

    goto/16 :goto_2

    :cond_9
    move-object v2, v11

    goto/16 :goto_3

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0x11 -> :sswitch_5
        0x16 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
    .end sparse-switch
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 376
    if-nez p4, :cond_0

    move v6, v7

    .line 377
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 378
    sget-object v1, Lam/sunrise/android/calendar/provider/Content;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 380
    sparse-switch v1, :sswitch_data_0

    .line 592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v6, v0

    .line 376
    goto :goto_0

    .line 382
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "connection"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 383
    if-lez v0, :cond_1

    .line 385
    sget-object v1, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 386
    sget-object v1, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 387
    sget-object v1, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 388
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 390
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    .line 594
    :cond_1
    :goto_1
    return v0

    .line 395
    :sswitch_1
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "connection"

    const-string v4, "connection_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 399
    if-lez v0, :cond_1

    .line 401
    sget-object v1, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 402
    sget-object v1, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 403
    sget-object v1, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 404
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 406
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto :goto_1

    .line 411
    :sswitch_2
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "calendar"

    const-string v4, "calendar_connection_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 415
    if-lez v0, :cond_1

    .line 417
    sget-object v1, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 418
    sget-object v1, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 419
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 421
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto :goto_1

    .line 426
    :sswitch_3
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "calendar"

    const-string v4, "calendar_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 430
    if-lez v0, :cond_1

    .line 432
    sget-object v1, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 433
    sget-object v1, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 434
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 436
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto :goto_1

    .line 441
    :sswitch_4
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 442
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "suggested_people"

    const-string v4, "suggested_people_calendar_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 445
    if-lez v0, :cond_1

    .line 447
    invoke-virtual {v8, p1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 464
    :sswitch_5
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 470
    if-eqz p4, :cond_3

    .line 475
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const-string v5, "event_calendar_id = ? AND event_id = ?"

    new-array v9, v9, [Ljava/lang/String;

    aput-object v3, v9, v0

    aput-object v4, v9, v7

    invoke-virtual {v1, v2, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 479
    if-lez v0, :cond_2

    .line 481
    sget-object v1, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 482
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 483
    sget-object v1, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 506
    :cond_2
    :goto_2
    if-lez v0, :cond_1

    .line 507
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 486
    :cond_3
    const-string v1, "Content"

    const-string v2, "marking event as deleted calendarId=%s eventId=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v7

    invoke-static {v1, v2, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-static {p1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 493
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v2

    const-string v5, "timezone_id"

    invoke-virtual {v2, v5}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 497
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;)V

    .line 500
    sget-object v0, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v0, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 501
    sget-object v0, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v0, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 502
    sget-object v0, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    invoke-virtual {v8, v0, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    move v0, v7

    .line 503
    goto :goto_2

    .line 513
    :sswitch_6
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 515
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0, v1, v2, v7}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 517
    if-lez v0, :cond_1

    .line 518
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 523
    :sswitch_7
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 525
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0, v1, v2, v9}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 527
    if-lez v0, :cond_1

    .line 528
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 533
    :sswitch_8
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 535
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 537
    if-lez v0, :cond_1

    .line 538
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 543
    :sswitch_9
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 545
    iget-object v3, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "location"

    const-string v5, "location_event_id = ?"

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v0

    invoke-virtual {v3, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 548
    if-lez v0, :cond_1

    .line 550
    sget-object v3, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    invoke-virtual {v8, v3, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 551
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 556
    :sswitch_a
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "occurrence"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 569
    sget-object v1, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 570
    sget-object v1, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1, v10, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 572
    invoke-direct {p0, p4}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 577
    :sswitch_b
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 578
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reminders"

    const-string v4, "reminder_event_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 583
    :sswitch_c
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/m;->b(Landroid/net/Uri;)J

    move-result-wide v2

    .line 585
    iget-object v4, p0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reminders"

    const-string v6, "reminder_event_id = ? AND reminder_alarm_time = ?"

    new-array v8, v9, [Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
        0xf -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x16 -> :sswitch_9
        0x32 -> :sswitch_a
        0x47 -> :sswitch_b
        0x48 -> :sswitch_c
    .end sparse-switch
.end method

.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 17

    .prologue
    .line 605
    if-nez p3, :cond_1

    const/4 v2, 0x1

    move v15, v2

    .line 606
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 607
    sget-object v2, Lam/sunrise/android/calendar/provider/Content;->d:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 608
    sparse-switch v2, :sswitch_data_0

    .line 836
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_1
    const/4 v2, 0x0

    move v15, v2

    goto :goto_0

    .line 610
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 612
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 613
    const-string v2, "connection_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 839
    :goto_1
    return-object p1

    .line 618
    :sswitch_1
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    const-string v2, "calendar_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 623
    sget-object v3, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 624
    invoke-static {v2}, Lam/sunrise/android/calendar/provider/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 629
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/provider/n;->d(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .line 638
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 642
    if-eqz p3, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lam/sunrise/android/calendar/provider/n;->e(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 644
    const-string v2, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v4

    const-string v7, "timezone_id"

    invoke-virtual {v4, v7}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 651
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 652
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 653
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 654
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    .line 658
    invoke-static {v5, v6}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    .line 661
    :cond_2
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;)Z

    move-result v7

    .line 662
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 663
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 664
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->d(Landroid/net/Uri;)J

    move-result-wide v10

    .line 665
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v12}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 670
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v9, v3}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 675
    :cond_3
    const-string v2, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v2

    const-string v3, "timezone_id"

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 679
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v7

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v2 .. v7}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 684
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 685
    move-object/from16 v0, p0

    iget-object v9, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v10, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v11, v4

    move-object v12, v5

    move-object v13, v8

    move v14, v7

    invoke-static/range {v9 .. v14}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 689
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;)V

    .line 692
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 693
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 694
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 695
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 697
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    .line 699
    invoke-static {v5, v6}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    .line 705
    :sswitch_4
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 707
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 708
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 709
    const-string v5, "person_kind"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v5, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v5, v2, v3, v4}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 712
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    .line 713
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    .line 719
    :sswitch_5
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 721
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 722
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 723
    const-string v5, "person_kind"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v5, v2, v3, v4}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 726
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    .line 727
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_1

    .line 733
    :sswitch_6
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 735
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 736
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 737
    const-string v5, "person_kind"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v5, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v5, v2, v3, v4}, Lam/sunrise/android/calendar/provider/n;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 740
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 748
    :sswitch_7
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lam/sunrise/android/calendar/provider/n;->f(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 752
    sget-object v4, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 753
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 755
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 761
    :sswitch_8
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/i;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 763
    const-string v2, "event_recurrence_exceptions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 767
    if-eqz p3, :cond_5

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v2, v3, v4, v5, v6}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 771
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 772
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 774
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 779
    :cond_5
    const-string v2, "Content"

    const-string v7, "appending occurrence deletion calendarId=%s eventSourceId=%s date=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v7, v8}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lam/sunrise/android/calendar/provider/n;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "event"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "event_id"

    aput-object v8, v6, v7

    const-string v7, "event_calendar_id = ? AND event_source_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 791
    if-eqz v2, :cond_7

    .line 792
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 793
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 794
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lam/sunrise/android/calendar/provider/Content;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v6}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v6

    const-string v7, "timezone_id"

    invoke-virtual {v6, v7}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v9

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V

    .line 801
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 804
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;)V

    .line 807
    sget-object v2, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 808
    sget-object v2, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 810
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 817
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 819
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 820
    sget-object v2, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 822
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/Content;->b(Z)V

    goto/16 :goto_1

    .line 829
    :sswitch_a
    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/provider/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/provider/n;->h(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 839
    :cond_8
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x32 -> :sswitch_9
        0x47 -> :sswitch_a
    .end sparse-switch
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 1337
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->a()Lam/sunrise/android/calendar/provider/o;

    move-result-object v0

    const-string v1, "timezone_id"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/provider/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/analytics/f;->a(Landroid/content/Context;)V

    .line 365
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/SunriseApplication;->a(Landroid/content/Context;)V

    .line 366
    invoke-super {p0}, Lam/sunrise/android/calendar/provider/w;->onCreate()Z

    move-result v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/Content;->f()V

    .line 370
    :cond_0
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 845
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/Content;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 846
    sget-object v1, Lam/sunrise/android/calendar/provider/Content;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 849
    invoke-direct {p0, p1, v1}, Lam/sunrise/android/calendar/provider/Content;->a(Landroid/net/Uri;I)Lam/sunrise/android/calendar/b/j;

    move-result-object v1

    .line 850
    invoke-virtual {v1, p3, p4}, Lam/sunrise/android/calendar/b/j;->a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p5}, Lam/sunrise/android/calendar/b/j;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 851
    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 854
    :cond_0
    const-string v2, "Content"

    const-string v3, "query(%s): rowCount=%d"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    return-object v1

    .line 854
    :cond_1
    const-string v0, "-1"

    goto :goto_0
.end method
