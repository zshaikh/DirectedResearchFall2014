.class final enum Lcom/acmeaom/android/a/a/c/k;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/c/k;

.field public static final enum b:Lcom/acmeaom/android/a/a/c/k;

.field public static final enum c:Lcom/acmeaom/android/a/a/c/k;

.field private static final synthetic d:[Lcom/acmeaom/android/a/a/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/acmeaom/android/a/a/c/k;

    const-string v1, "Rect"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/k;->a:Lcom/acmeaom/android/a/a/c/k;

    new-instance v0, Lcom/acmeaom/android/a/a/c/k;

    const-string v1, "Ellipse"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/a/a/c/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/k;->b:Lcom/acmeaom/android/a/a/c/k;

    new-instance v0, Lcom/acmeaom/android/a/a/c/k;

    const-string v1, "Bezier"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/a/a/c/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/k;->c:Lcom/acmeaom/android/a/a/c/k;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acmeaom/android/a/a/c/k;

    sget-object v1, Lcom/acmeaom/android/a/a/c/k;->a:Lcom/acmeaom/android/a/a/c/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/a/a/c/k;->b:Lcom/acmeaom/android/a/a/c/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/a/a/c/k;->c:Lcom/acmeaom/android/a/a/c/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/a/a/c/k;->d:[Lcom/acmeaom/android/a/a/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/c/k;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/acmeaom/android/a/a/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/k;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/c/k;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/acmeaom/android/a/a/c/k;->d:[Lcom/acmeaom/android/a/a/c/k;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/c/k;

    return-object v0
.end method
