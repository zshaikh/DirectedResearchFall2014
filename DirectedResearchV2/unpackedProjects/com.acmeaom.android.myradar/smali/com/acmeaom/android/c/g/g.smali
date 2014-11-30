.class final enum Lcom/acmeaom/android/c/g/g;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/c/g/g;

.field public static final enum b:Lcom/acmeaom/android/c/g/g;

.field public static final enum c:Lcom/acmeaom/android/c/g/g;

.field private static final synthetic d:[Lcom/acmeaom/android/c/g/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/acmeaom/android/c/g/g;

    const-string v1, "FWStopped"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    new-instance v0, Lcom/acmeaom/android/c/g/g;

    const-string v1, "FWRunning"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    new-instance v0, Lcom/acmeaom/android/c/g/g;

    const-string v1, "FWStopRequested"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/c/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/g;->c:Lcom/acmeaom/android/c/g/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acmeaom/android/c/g/g;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/c/g/g;->c:Lcom/acmeaom/android/c/g/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/c/g/g;->d:[Lcom/acmeaom/android/c/g/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/c/g/g;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/acmeaom/android/c/g/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/g;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/c/g/g;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/acmeaom/android/c/g/g;->d:[Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0}, [Lcom/acmeaom/android/c/g/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/g/g;

    return-object v0
.end method
