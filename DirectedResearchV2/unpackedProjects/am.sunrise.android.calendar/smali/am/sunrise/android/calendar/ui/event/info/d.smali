.class interface abstract Lam/sunrise/android/calendar/ui/event/info/d;
.super Ljava/lang/Object;
.source "EventInfoLoader.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 386
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person_email_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person_email_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "person_is_self"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "person_facebook_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "person_firstname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person_lastname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "person_thumbnail_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "person_cover_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "person_rsvp_status"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/event/info/d;->a:[Ljava/lang/String;

    return-void
.end method
