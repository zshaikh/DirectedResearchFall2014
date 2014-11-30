.class interface abstract Lam/sunrise/android/calendar/sync/c;
.super Ljava/lang/Object;
.source "Feeder.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connection_id"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/sync/c;->a:[Ljava/lang/String;

    return-void
.end method
