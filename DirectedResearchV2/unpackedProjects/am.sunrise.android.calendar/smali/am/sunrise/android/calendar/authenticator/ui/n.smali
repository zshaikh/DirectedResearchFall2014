.class public final enum Lam/sunrise/android/calendar/authenticator/ui/n;
.super Ljava/lang/Enum;
.source "AuthenticatorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/authenticator/ui/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/authenticator/ui/n;

.field public static final enum b:Lam/sunrise/android/calendar/authenticator/ui/n;

.field private static final synthetic c:[Lam/sunrise/android/calendar/authenticator/ui/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/n;

    const-string v1, "NoNetwork"

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    .line 40
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/n;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/authenticator/ui/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->b:Lam/sunrise/android/calendar/authenticator/ui/n;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lam/sunrise/android/calendar/authenticator/ui/n;

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/n;->b:Lam/sunrise/android/calendar/authenticator/ui/n;

    aput-object v1, v0, v3

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->c:[Lam/sunrise/android/calendar/authenticator/ui/n;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/authenticator/ui/n;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lam/sunrise/android/calendar/authenticator/ui/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/n;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/authenticator/ui/n;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->c:[Lam/sunrise/android/calendar/authenticator/ui/n;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/authenticator/ui/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/authenticator/ui/n;

    return-object v0
.end method
