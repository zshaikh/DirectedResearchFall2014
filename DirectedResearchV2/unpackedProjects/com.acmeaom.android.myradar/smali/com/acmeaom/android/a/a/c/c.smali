.class public final enum Lcom/acmeaom/android/a/a/c/c;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/c/c;

.field private static final synthetic b:[Lcom/acmeaom/android/a/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/a/c/c;

    const-string v1, "CGColorSpaceDeviceRGB"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/c;->a:Lcom/acmeaom/android/a/a/c/c;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/acmeaom/android/a/a/c/c;

    sget-object v1, Lcom/acmeaom/android/a/a/c/c;->a:Lcom/acmeaom/android/a/a/c/c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/acmeaom/android/a/a/c/c;->b:[Lcom/acmeaom/android/a/a/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/c/c;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/acmeaom/android/a/a/c/c;->a:Lcom/acmeaom/android/a/a/c/c;

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/c;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/c/c;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/acmeaom/android/a/a/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/c;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/c/c;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/acmeaom/android/a/a/c/c;->b:[Lcom/acmeaom/android/a/a/c/c;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/c/c;

    return-object v0
.end method
