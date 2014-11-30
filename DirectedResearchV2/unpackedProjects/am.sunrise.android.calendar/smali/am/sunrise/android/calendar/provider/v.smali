.class interface abstract Lam/sunrise/android/calendar/provider/v;
.super Ljava/lang/Object;
.source "Occurrences.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 517
    sget-object v0, Lam/sunrise/android/calendar/provider/i;->a:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/provider/v;->a:Landroid/net/Uri;

    .line 518
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "calendar_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_type"

    aput-object v1, v0, v4

    const-string v1, "calendar_title"

    aput-object v1, v0, v5

    const-string v1, "event_id"

    aput-object v1, v0, v6

    const-string v1, "event_source_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "event_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event_is_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "event_rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "event_exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "event_recurrence_exceptions"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "event_user_rsvp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "event_pending_actions"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/provider/v;->b:[Ljava/lang/String;

    .line 541
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "%\"Delete\"%"

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    sput-object v0, Lam/sunrise/android/calendar/provider/v;->c:[Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/provider/v;->d:Ljava/lang/String;

    return-void
.end method
