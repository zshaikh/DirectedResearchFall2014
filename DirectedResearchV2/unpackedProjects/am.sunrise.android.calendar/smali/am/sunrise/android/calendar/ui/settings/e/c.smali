.class public final enum Lam/sunrise/android/calendar/ui/settings/e/c;
.super Ljava/lang/Enum;
.source "ConnectServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/settings/e/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/settings/e/c;

.field public static final enum b:Lam/sunrise/android/calendar/ui/settings/e/c;

.field public static final enum c:Lam/sunrise/android/calendar/ui/settings/e/c;

.field private static final synthetic e:[Lam/sunrise/android/calendar/ui/settings/e/c;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/c;

    const-string v1, "Facebook"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v3, v2}, Lam/sunrise/android/calendar/ui/settings/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/e/c;->a:Lam/sunrise/android/calendar/ui/settings/e/c;

    .line 35
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/c;

    const-string v1, "GooglePlus"

    const-string v2, "google"

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/settings/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/e/c;->b:Lam/sunrise/android/calendar/ui/settings/e/c;

    .line 36
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/c;

    const-string v1, "Twitter"

    const-string v2, "twitter"

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/settings/e/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/e/c;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/settings/e/c;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/e/c;->a:Lam/sunrise/android/calendar/ui/settings/e/c;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/e/c;->b:Lam/sunrise/android/calendar/ui/settings/e/c;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/e/c;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    aput-object v1, v0, v5

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/e/c;->e:[Lam/sunrise/android/calendar/ui/settings/e/c;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/e/c;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/e/c;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/c;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/settings/e/c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/e/c;->e:[Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/settings/e/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/e/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/c;->d:Ljava/lang/String;

    return-object v0
.end method
