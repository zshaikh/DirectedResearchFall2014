.class final enum Lam/sunrise/android/calendar/authenticator/ui/facebook/e;
.super Ljava/lang/Enum;
.source "FacebookFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/authenticator/ui/facebook/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

.field private static final synthetic f:[Lam/sunrise/android/calendar/authenticator/ui/facebook/e;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    const-string v1, "FacebookConnect"

    const v3, 0x7f030057

    const v4, 0x7f0b00d7

    const v5, 0x7f0b004d

    const v6, 0x7f0f008c

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    aput-object v1, v0, v2

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->f:[Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->b:I

    .line 48
    iput p4, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->c:I

    .line 49
    iput p5, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->d:I

    .line 50
    iput p6, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->e:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/authenticator/ui/facebook/e;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/authenticator/ui/facebook/e;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->f:[Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    return-object v0
.end method
