.class public final enum Lam/sunrise/android/calendar/ui/widgets/agenda/p;
.super Ljava/lang/Enum;
.source "AgendaViewDateSectionHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/widgets/agenda/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

.field public static final enum b:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

.field public static final enum c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

.field public static final enum d:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

.field private static final synthetic f:[Lam/sunrise/android/calendar/ui/widgets/agenda/p;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 33
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    const-string v1, "YESTERDAY"

    const v2, 0x7f0f00cf

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 34
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    const-string v1, "TODAY"

    const v2, 0x7f0f00cd

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 35
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    const-string v1, "TOMORROW"

    const v2, 0x7f0f00ce

    invoke-direct {v0, v1, v6, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->d:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    aput-object v1, v0, v5

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->d:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    aput-object v1, v0, v6

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->f:[Lam/sunrise/android/calendar/ui/widgets/agenda/p;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->e:I

    .line 41
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/p;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/widgets/agenda/p;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/widgets/agenda/p;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->f:[Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/widgets/agenda/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    return-object v0
.end method
