.class interface abstract Lam/sunrise/android/calendar/ui/m;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    sget-object v0, Lam/sunrise/android/calendar/provider/j;->a:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/ui/m;->a:Landroid/net/Uri;

    .line 406
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "inbox_distinct"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inbox_event_start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "inbox_event_end_date"

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

    const-string v2, "occurrence_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "occurrence_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "occurrence_is_all_day"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/m;->b:[Ljava/lang/String;

    .line 422
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    sput-object v0, Lam/sunrise/android/calendar/ui/m;->c:[Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/ui/m;->d:Ljava/lang/String;

    return-void
.end method
