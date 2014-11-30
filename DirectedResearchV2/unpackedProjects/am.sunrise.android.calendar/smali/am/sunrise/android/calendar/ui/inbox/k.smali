.class interface abstract Lam/sunrise/android/calendar/ui/inbox/k;
.super Ljava/lang/Object;
.source "InboxFragment.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    sget-object v0, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/ui/inbox/k;->a:Landroid/net/Uri;

    .line 328
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "occurrence_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "occurrence_end_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "occurrence_is_all_day"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "event_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "event_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "event_is_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "event_user_rsvp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "event_icon_overlay"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "event_icon_base_color"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "event_rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "event_extra_invitation_seen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "inbox_distinct"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "inbox_event_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "inbox_event_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "inbox_event_inviter_facebook_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "inbox_event_inviter_name"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "inbox_event_inviter_firstname"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "inbox_event_inviter_lastname"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "inbox_event_inviter_email_1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "inbox_event_inviter_email_2"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/inbox/k;->b:[Ljava/lang/String;

    .line 358
    sput-object v3, Lam/sunrise/android/calendar/ui/inbox/k;->c:Ljava/lang/String;

    .line 359
    sput-object v3, Lam/sunrise/android/calendar/ui/inbox/k;->d:[Ljava/lang/String;

    return-void
.end method
