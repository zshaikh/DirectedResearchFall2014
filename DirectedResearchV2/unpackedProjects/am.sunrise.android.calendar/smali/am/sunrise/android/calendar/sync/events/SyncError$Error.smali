.class public final enum Lam/sunrise/android/calendar/sync/events/SyncError$Error;
.super Ljava/lang/Enum;
.source "SyncError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/sync/events/SyncError$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lam/sunrise/android/calendar/sync/events/SyncError$Error;

.field public static final enum NoNetwork:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

.field public static final enum NotAuthenticated:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

.field public static final enum OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

.field public static final enum Unknown:Lam/sunrise/android/calendar/sync/events/SyncError$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    const-string v1, "NoNetwork"

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NoNetwork:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 15
    new-instance v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    const-string v1, "NotAuthenticated"

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NotAuthenticated:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 16
    new-instance v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    const-string v1, "OAuth"

    invoke-direct {v0, v1, v4}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 17
    new-instance v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->Unknown:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NoNetwork:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NotAuthenticated:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->Unknown:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    aput-object v1, v0, v5

    sput-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->$VALUES:[Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/events/SyncError$Error;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/sync/events/SyncError$Error;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->$VALUES:[Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/sync/events/SyncError$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    return-object v0
.end method
