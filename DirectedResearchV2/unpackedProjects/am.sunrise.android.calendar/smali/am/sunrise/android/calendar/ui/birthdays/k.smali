.class interface abstract Lam/sunrise/android/calendar/ui/birthdays/k;
.super Ljava/lang/Object;
.source "BirthdaysFragment.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "event_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "occurrence_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "person_facebook_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "person_firstname"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "person_lastname"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "person_thumbnail_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "person_email_1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "person_cover_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "person_cover_offset_y"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "person_birthday"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/birthdays/k;->a:[Ljava/lang/String;

    .line 303
    sput-object v3, Lam/sunrise/android/calendar/ui/birthdays/k;->b:Ljava/lang/String;

    .line 304
    sput-object v3, Lam/sunrise/android/calendar/ui/birthdays/k;->c:[Ljava/lang/String;

    return-void
.end method
