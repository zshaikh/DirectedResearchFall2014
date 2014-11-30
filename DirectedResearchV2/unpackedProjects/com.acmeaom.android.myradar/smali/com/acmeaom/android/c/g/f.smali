.class final enum Lcom/acmeaom/android/c/g/f;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/c/g/f;

.field public static final enum b:Lcom/acmeaom/android/c/g/f;

.field public static final enum c:Lcom/acmeaom/android/c/g/f;

.field public static final enum d:Lcom/acmeaom/android/c/g/f;

.field private static final synthetic e:[Lcom/acmeaom/android/c/g/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/acmeaom/android/c/g/f;

    const-string v1, "FWRenderingDone"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/f;->a:Lcom/acmeaom/android/c/g/f;

    new-instance v0, Lcom/acmeaom/android/c/g/f;

    const-string v1, "FWRenderNeeded"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    new-instance v0, Lcom/acmeaom/android/c/g/f;

    const-string v1, "FWRenderPaused"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/c/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/f;->c:Lcom/acmeaom/android/c/g/f;

    new-instance v0, Lcom/acmeaom/android/c/g/f;

    const-string v1, "FWRenderResumed"

    invoke-direct {v0, v1, v5}, Lcom/acmeaom/android/c/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/g/f;->d:Lcom/acmeaom/android/c/g/f;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acmeaom/android/c/g/f;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->a:Lcom/acmeaom/android/c/g/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/c/g/f;->c:Lcom/acmeaom/android/c/g/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/c/g/f;->d:Lcom/acmeaom/android/c/g/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/acmeaom/android/c/g/f;->e:[Lcom/acmeaom/android/c/g/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/c/g/f;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/acmeaom/android/c/g/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/f;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/c/g/f;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/acmeaom/android/c/g/f;->e:[Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0}, [Lcom/acmeaom/android/c/g/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/g/f;

    return-object v0
.end method
