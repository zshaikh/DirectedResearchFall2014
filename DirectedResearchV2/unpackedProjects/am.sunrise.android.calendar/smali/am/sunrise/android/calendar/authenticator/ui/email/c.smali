.class final enum Lam/sunrise/android/calendar/authenticator/ui/email/c;
.super Ljava/lang/Enum;
.source "EmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/authenticator/ui/email/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/authenticator/ui/email/c;

.field private static final synthetic h:[Lam/sunrise/android/calendar/authenticator/ui/email/c;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;

    const-string v1, "EmailConnect"

    const v3, 0x7f030056

    const v4, 0x7f0b00d6

    const v5, 0x7f0b004e

    const v6, 0x7f0f008e

    const-string v7, "https://api.sunrise.am/v2/users/authenticate?redirectURI=http://0.0.0.0"

    const v8, 0x7f0f008c

    invoke-direct/range {v0 .. v8}, Lam/sunrise/android/calendar/authenticator/ui/email/c;-><init>(Ljava/lang/String;IIIIILjava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->a:Lam/sunrise/android/calendar/authenticator/ui/email/c;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Lam/sunrise/android/calendar/authenticator/ui/email/c;

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/email/c;->a:Lam/sunrise/android/calendar/authenticator/ui/email/c;

    aput-object v1, v0, v2

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->h:[Lam/sunrise/android/calendar/authenticator/ui/email/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->b:I

    .line 58
    iput p4, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->c:I

    .line 59
    iput p5, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->d:I

    .line 60
    iput p6, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->e:I

    .line 61
    iput-object p7, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->f:Ljava/lang/String;

    .line 62
    iput p8, p0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->g:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/authenticator/ui/email/c;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/authenticator/ui/email/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->h:[Lam/sunrise/android/calendar/authenticator/ui/email/c;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/authenticator/ui/email/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/authenticator/ui/email/c;

    return-object v0
.end method
