.class interface abstract Lam/sunrise/android/calendar/ui/settings/aq;
.super Ljava/lang/Object;
.source "SettingsDefaultCalendarFragment.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "connection_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "connection_info"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connection_is_disconnected"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_is_writable"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/aq;->a:[Ljava/lang/String;

    .line 164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/aq;->b:[Ljava/lang/String;

    return-void
.end method
