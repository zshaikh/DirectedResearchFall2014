.class public final enum Lam/sunrise/android/calendar/ui/widgets/am;
.super Ljava/lang/Enum;
.source "TypefaceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/widgets/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/widgets/am;

.field public static final enum b:Lam/sunrise/android/calendar/ui/widgets/am;

.field public static final enum c:Lam/sunrise/android/calendar/ui/widgets/am;

.field public static final enum d:Lam/sunrise/android/calendar/ui/widgets/am;

.field public static final enum e:Lam/sunrise/android/calendar/ui/widgets/am;

.field public static final enum f:Lam/sunrise/android/calendar/ui/widgets/am;

.field private static final synthetic h:[Lam/sunrise/android/calendar/ui/widgets/am;


# instance fields
.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Bold"

    const-string v2, "fonts/Roboto-Bold.ttf"

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->a:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 19
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Thin"

    const-string v2, "fonts/Roboto-Thin.ttf"

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->b:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 20
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Light"

    const-string v2, "sans-serif-light"

    invoke-direct {v0, v1, v6, v2}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 21
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Regular"

    const-string v2, "sans-serif"

    invoke-direct {v0, v1, v7, v2}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 22
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Medium"

    const-string v2, "fonts/Roboto-Medium.ttf"

    invoke-direct {v0, v1, v8, v2}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 23
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/am;

    const-string v1, "Condensed"

    const/4 v2, 0x5

    const-string v3, "sans-serif-condensed"

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/am;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->f:Lam/sunrise/android/calendar/ui/widgets/am;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/am;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->a:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->b:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v1, v0, v5

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v1, v0, v6

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v1, v0, v7

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->f:Lam/sunrise/android/calendar/ui/widgets/am;

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->h:[Lam/sunrise/android/calendar/ui/widgets/am;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/widgets/am;->g:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/widgets/am;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/am;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/widgets/am;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/am;->h:[Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/widgets/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/widgets/am;

    return-object v0
.end method
