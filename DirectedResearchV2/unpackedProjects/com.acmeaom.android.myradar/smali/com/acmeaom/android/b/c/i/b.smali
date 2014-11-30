.class public final enum Lcom/acmeaom/android/b/c/i/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/b/c/i/b;

.field public static final enum b:Lcom/acmeaom/android/b/c/i/b;

.field public static final enum c:Lcom/acmeaom/android/b/c/i/b;

.field private static final synthetic d:[Lcom/acmeaom/android/b/c/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/acmeaom/android/b/c/i/b;

    const-string v1, "aaTemperatureTypeLand"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/b/c/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/i/b;->a:Lcom/acmeaom/android/b/c/i/b;

    .line 39
    new-instance v0, Lcom/acmeaom/android/b/c/i/b;

    const-string v1, "aaTemperatureTypeWater"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/b/c/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/i/b;->b:Lcom/acmeaom/android/b/c/i/b;

    .line 40
    new-instance v0, Lcom/acmeaom/android/b/c/i/b;

    const-string v1, "aaTemperatureTypeCount"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/b/c/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/i/b;->c:Lcom/acmeaom/android/b/c/i/b;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acmeaom/android/b/c/i/b;

    sget-object v1, Lcom/acmeaom/android/b/c/i/b;->a:Lcom/acmeaom/android/b/c/i/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/b/c/i/b;->b:Lcom/acmeaom/android/b/c/i/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/b/c/i/b;->c:Lcom/acmeaom/android/b/c/i/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/b/c/i/b;->d:[Lcom/acmeaom/android/b/c/i/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/b/c/i/b;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/acmeaom/android/b/c/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/i/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/b/c/i/b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/acmeaom/android/b/c/i/b;->d:[Lcom/acmeaom/android/b/c/i/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/b/c/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/b/c/i/b;

    return-object v0
.end method
