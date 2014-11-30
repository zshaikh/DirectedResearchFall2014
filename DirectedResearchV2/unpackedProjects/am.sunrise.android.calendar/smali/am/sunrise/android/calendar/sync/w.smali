.class interface abstract Lam/sunrise/android/calendar/sync/w;
.super Ljava/lang/Object;
.source "SyncWorkerRunnable.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "calendar_id"

    aput-object v1, v0, v2

    const-string v1, "calendar_sync_token"

    aput-object v1, v0, v3

    sput-object v0, Lam/sunrise/android/calendar/sync/w;->a:[Ljava/lang/String;

    .line 344
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lam/sunrise/android/calendar/sync/w;->b:[Ljava/lang/String;

    return-void
.end method
