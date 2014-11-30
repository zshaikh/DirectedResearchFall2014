.class public final enum Lam/sunrise/android/calendar/ui/utils/c;
.super Ljava/lang/Enum;
.source "TextViewCompoundDrawablePicassoTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/utils/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/utils/c;

.field public static final enum b:Lam/sunrise/android/calendar/ui/utils/c;

.field public static final enum c:Lam/sunrise/android/calendar/ui/utils/c;

.field public static final enum d:Lam/sunrise/android/calendar/ui/utils/c;

.field private static final synthetic e:[Lam/sunrise/android/calendar/ui/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/c;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/ui/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/utils/c;->a:Lam/sunrise/android/calendar/ui/utils/c;

    .line 30
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/c;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/ui/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/utils/c;->b:Lam/sunrise/android/calendar/ui/utils/c;

    .line 31
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/c;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lam/sunrise/android/calendar/ui/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/utils/c;->c:Lam/sunrise/android/calendar/ui/utils/c;

    .line 32
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/c;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lam/sunrise/android/calendar/ui/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/utils/c;->d:Lam/sunrise/android/calendar/ui/utils/c;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/utils/c;

    sget-object v1, Lam/sunrise/android/calendar/ui/utils/c;->a:Lam/sunrise/android/calendar/ui/utils/c;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/ui/utils/c;->b:Lam/sunrise/android/calendar/ui/utils/c;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/utils/c;->c:Lam/sunrise/android/calendar/ui/utils/c;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/utils/c;->d:Lam/sunrise/android/calendar/ui/utils/c;

    aput-object v1, v0, v5

    sput-object v0, Lam/sunrise/android/calendar/ui/utils/c;->e:[Lam/sunrise/android/calendar/ui/utils/c;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/utils/c;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lam/sunrise/android/calendar/ui/utils/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/utils/c;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/utils/c;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lam/sunrise/android/calendar/ui/utils/c;->e:[Lam/sunrise/android/calendar/ui/utils/c;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/utils/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/utils/c;

    return-object v0
.end method
