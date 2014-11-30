.class public final enum Lam/sunrise/android/calendar/sync/Offline$RecordType;
.super Ljava/lang/Enum;
.source "Offline.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/sync/Offline$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum Create:Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum Delete:Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum Edit:Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

.field public static final enum RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "Create"

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Create:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 106
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v4}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Delete:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 107
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "DeleteOccurrence"

    invoke-direct {v0, v1, v5}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 108
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "Edit"

    invoke-direct {v0, v1, v6}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Edit:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 109
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "EditOccurrence"

    invoke-direct {v0, v1, v7}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 110
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    const-string v1, "RSVP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/sync/Offline$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Create:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Delete:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v1, v0, v5

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Edit:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v1, v0, v6

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->$VALUES:[Lam/sunrise/android/calendar/sync/Offline$RecordType;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$RecordType;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/sync/Offline$RecordType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lam/sunrise/android/calendar/sync/Offline$RecordType;->$VALUES:[Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/sync/Offline$RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/sync/Offline$RecordType;

    return-object v0
.end method
