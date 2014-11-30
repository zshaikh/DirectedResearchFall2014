.class interface abstract Lam/sunrise/android/calendar/reminders/i;
.super Ljava/lang/Object;
.source "RemindersDescriptor.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    sget-object v0, Lam/sunrise/android/calendar/provider/i;->b:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/reminders/i;->a:Landroid/net/Uri;

    .line 206
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "event_is_all_day"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_end_date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "event_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event_reminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "occurrence_date"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "occurrence_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "occurrence_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "occurrence_is_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "location_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "location_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "location_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "location_street"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "location_city"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "location_state"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "location_country"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/reminders/i;->b:[Ljava/lang/String;

    .line 229
    sput-object v3, Lam/sunrise/android/calendar/reminders/i;->c:Ljava/lang/String;

    .line 230
    sput-object v3, Lam/sunrise/android/calendar/reminders/i;->d:[Ljava/lang/String;

    .line 231
    sput-object v3, Lam/sunrise/android/calendar/reminders/i;->e:Ljava/lang/String;

    return-void
.end method
