.class public final enum Lcom/acmeaom/android/myradar/a/i;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/myradar/a/i;

.field public static final enum b:Lcom/acmeaom/android/myradar/a/i;

.field public static final enum c:Lcom/acmeaom/android/myradar/a/i;

.field private static final synthetic d:[Lcom/acmeaom/android/myradar/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/acmeaom/android/myradar/a/i;

    const-string v1, "Google"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/myradar/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/i;->a:Lcom/acmeaom/android/myradar/a/i;

    new-instance v0, Lcom/acmeaom/android/myradar/a/i;

    const-string v1, "Samsung"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/myradar/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/i;->b:Lcom/acmeaom/android/myradar/a/i;

    new-instance v0, Lcom/acmeaom/android/myradar/a/i;

    const-string v1, "Amazon"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/myradar/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/i;->c:Lcom/acmeaom/android/myradar/a/i;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acmeaom/android/myradar/a/i;

    sget-object v1, Lcom/acmeaom/android/myradar/a/i;->a:Lcom/acmeaom/android/myradar/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/myradar/a/i;->b:Lcom/acmeaom/android/myradar/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/myradar/a/i;->c:Lcom/acmeaom/android/myradar/a/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/myradar/a/i;->d:[Lcom/acmeaom/android/myradar/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/myradar/a/i;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/acmeaom/android/myradar/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/myradar/a/i;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/myradar/a/i;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/acmeaom/android/myradar/a/i;->d:[Lcom/acmeaom/android/myradar/a/i;

    invoke-virtual {v0}, [Lcom/acmeaom/android/myradar/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/myradar/a/i;

    return-object v0
.end method
