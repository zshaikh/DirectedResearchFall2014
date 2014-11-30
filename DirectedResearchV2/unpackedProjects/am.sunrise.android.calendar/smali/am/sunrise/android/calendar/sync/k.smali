.class interface abstract Lam/sunrise/android/calendar/sync/k;
.super Ljava/lang/Object;
.source "PendingActions.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "calendar_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_source_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "event_description"

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

    const-string v2, "event_is_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_pending_actions"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event_attendees"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "event_rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "event_reminders"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "location_city"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "location_country"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "location_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "location_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "location_name"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "location_state"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "location_street"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "location_viewport_nelat"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "location_viewport_nelng"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "location_viewport_swlat"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "location_viewport_swlng"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/sync/k;->a:[Ljava/lang/String;

    .line 874
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lam/sunrise/android/calendar/sync/k;->b:[Ljava/lang/String;

    .line 875
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/sync/k;->c:Ljava/lang/String;

    return-void
.end method
