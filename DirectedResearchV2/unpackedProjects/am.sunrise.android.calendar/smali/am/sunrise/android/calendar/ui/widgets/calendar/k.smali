.class public final enum Lam/sunrise/android/calendar/ui/widgets/calendar/k;
.super Ljava/lang/Enum;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/widgets/calendar/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

.field public static final enum b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

.field public static final enum c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

.field public static final enum d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

.field private static final synthetic f:[Lam/sunrise/android/calendar/ui/widgets/calendar/k;


# instance fields
.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    const-string v1, "NORMAL_MODE"

    const/high16 v2, 0x40000000

    invoke-direct {v0, v1, v3, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 78
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    const-string v1, "PREVIEW_MODE"

    const/high16 v2, 0x40400000

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 79
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    const-string v1, "FULL_MODE"

    const/high16 v2, 0x40800000

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 80
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    const-string v1, "FULL_EXTENDED_MODE"

    const/high16 v2, 0x40b00000

    invoke-direct {v0, v1, v6, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    aput-object v1, v0, v5

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    aput-object v1, v0, v6

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->f:[Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->e:F

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/widgets/calendar/k;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/widgets/calendar/k;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->f:[Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/widgets/calendar/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->e:F

    return v0
.end method
