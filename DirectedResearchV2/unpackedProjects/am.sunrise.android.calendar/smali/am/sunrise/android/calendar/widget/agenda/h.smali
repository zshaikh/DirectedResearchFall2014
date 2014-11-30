.class interface abstract Lam/sunrise/android/calendar/widget/agenda/h;
.super Ljava/lang/Object;
.source "OccurrencesLoader.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_id"

    aput-object v1, v0, v4

    const-string v1, "calendar_type"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "occurrence_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "occurrence_is_all_day"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "occurrence_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "occurrence_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "occurrence_attendee_emails"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "occurrence_attendee_thumbnail_urls"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "occurrence_attendee_first_names"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "occurrence_attendee_last_names"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "occurrence_attendee_names"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "occurrence_attendee_is_self"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "event_is_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "event_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "event_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "event_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "event_description"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "event_icon_overlay"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "event_icon_base_color"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "location_name"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/h;->a:[Ljava/lang/String;

    .line 499
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/h;->b:[Ljava/lang/String;

    return-void
.end method
