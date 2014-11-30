.class interface abstract Lam/sunrise/android/calendar/ui/settings/u;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


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

    .line 379
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "connection_id"

    aput-object v1, v0, v4

    const-string v1, "connection_type"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "connection_info"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connection_is_disconnected"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "connection_is_unavailable"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/u;->a:[Ljava/lang/String;

    .line 389
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "store"

    aput-object v1, v0, v3

    const-string v1, "sunrise"

    aput-object v1, v0, v4

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/u;->b:[Ljava/lang/String;

    return-void
.end method
