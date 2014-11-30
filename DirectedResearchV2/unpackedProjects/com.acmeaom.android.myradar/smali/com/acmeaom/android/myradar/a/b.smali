.class public final enum Lcom/acmeaom/android/myradar/a/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/myradar/a/b;

.field public static final enum b:Lcom/acmeaom/android/myradar/a/b;

.field private static final synthetic c:[Lcom/acmeaom/android/myradar/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/acmeaom/android/myradar/a/b;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/myradar/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/b;->a:Lcom/acmeaom/android/myradar/a/b;

    new-instance v0, Lcom/acmeaom/android/myradar/a/b;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/myradar/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/b;->b:Lcom/acmeaom/android/myradar/a/b;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/myradar/a/b;

    sget-object v1, Lcom/acmeaom/android/myradar/a/b;->a:Lcom/acmeaom/android/myradar/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/myradar/a/b;->b:Lcom/acmeaom/android/myradar/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/myradar/a/b;->c:[Lcom/acmeaom/android/myradar/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/myradar/a/b;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/acmeaom/android/myradar/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/myradar/a/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/myradar/a/b;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/acmeaom/android/myradar/a/b;->c:[Lcom/acmeaom/android/myradar/a/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/myradar/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/myradar/a/b;

    return-object v0
.end method
