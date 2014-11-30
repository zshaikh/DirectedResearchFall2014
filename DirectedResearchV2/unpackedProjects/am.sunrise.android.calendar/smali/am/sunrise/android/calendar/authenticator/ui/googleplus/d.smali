.class public final enum Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;
.super Ljava/lang/Enum;
.source "GooglePlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

.field public static final enum b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

.field private static final synthetic g:[Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;


# instance fields
.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    const-string v1, "GooglePlusConnect"

    const v3, 0x7f030059

    const v4, 0x7f0b00d9

    const v5, 0x7f0b004b

    const v6, 0x7f0f008c

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->a:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    .line 70
    new-instance v3, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    const-string v4, "GooglePlusLink"

    const v6, 0x7f030067

    move v5, v10

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->a:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    aput-object v1, v0, v10

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->g:[Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->c:I

    .line 79
    iput p4, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->d:I

    .line 80
    iput p5, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->e:I

    .line 81
    iput p6, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->f:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->g:[Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    return-object v0
.end method
