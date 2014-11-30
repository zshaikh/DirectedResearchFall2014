.class public final enum Lam/sunrise/android/calendar/ui/mainview/a/x;
.super Ljava/lang/Enum;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/mainview/a/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/mainview/a/x;

.field public static final enum b:Lam/sunrise/android/calendar/ui/mainview/a/x;

.field private static final synthetic c:[Lam/sunrise/android/calendar/ui/mainview/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/x;

    const-string v1, "RegularEvents"

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/mainview/a/x;->a:Lam/sunrise/android/calendar/ui/mainview/a/x;

    .line 57
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/x;

    const-string v1, "AllDays"

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/ui/mainview/a/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/mainview/a/x;->b:Lam/sunrise/android/calendar/ui/mainview/a/x;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/mainview/a/x;

    sget-object v1, Lam/sunrise/android/calendar/ui/mainview/a/x;->a:Lam/sunrise/android/calendar/ui/mainview/a/x;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/ui/mainview/a/x;->b:Lam/sunrise/android/calendar/ui/mainview/a/x;

    aput-object v1, v0, v3

    sput-object v0, Lam/sunrise/android/calendar/ui/mainview/a/x;->c:[Lam/sunrise/android/calendar/ui/mainview/a/x;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/mainview/a/x;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lam/sunrise/android/calendar/ui/mainview/a/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/x;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/mainview/a/x;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lam/sunrise/android/calendar/ui/mainview/a/x;->c:[Lam/sunrise/android/calendar/ui/mainview/a/x;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/mainview/a/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/mainview/a/x;

    return-object v0
.end method
