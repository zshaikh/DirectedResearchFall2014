.class public final enum Lam/sunrise/android/calendar/ui/widgets/agenda/v;
.super Ljava/lang/Enum;
.source "AgendaViewTimeSectionItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/widgets/agenda/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

.field public static final enum b:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

.field public static final enum c:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

.field private static final synthetic e:[Lam/sunrise/android/calendar/ui/widgets/agenda/v;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    const-string v1, "MORNING"

    const v2, 0x7f0f00ef

    invoke-direct {v0, v1, v3, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    .line 49
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    const-string v1, "AFTERNOON"

    const v2, 0x7f0f0027

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    .line 50
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    const-string v1, "EVENING"

    const v2, 0x7f0f00b8

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    aput-object v1, v0, v5

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->e:[Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->d:I

    .line 56
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/v;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/widgets/agenda/v;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/widgets/agenda/v;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->e:[Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/widgets/agenda/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    return-object v0
.end method
