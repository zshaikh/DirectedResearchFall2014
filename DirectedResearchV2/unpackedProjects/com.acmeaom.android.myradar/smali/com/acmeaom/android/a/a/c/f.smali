.class public final enum Lcom/acmeaom/android/a/a/c/f;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/c/f;

.field public static final enum b:Lcom/acmeaom/android/a/a/c/f;

.field private static final synthetic c:[Lcom/acmeaom/android/a/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/acmeaom/android/a/a/c/f;

    const-string v1, "kCGBlendModeNormal"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/f;->a:Lcom/acmeaom/android/a/a/c/f;

    .line 51
    new-instance v0, Lcom/acmeaom/android/a/a/c/f;

    const-string v1, "kCGBlendModeCopy"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/a/a/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/f;->b:Lcom/acmeaom/android/a/a/c/f;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/a/a/c/f;

    sget-object v1, Lcom/acmeaom/android/a/a/c/f;->a:Lcom/acmeaom/android/a/a/c/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/a/a/c/f;->b:Lcom/acmeaom/android/a/a/c/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/a/a/c/f;->c:[Lcom/acmeaom/android/a/a/c/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/c/f;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/acmeaom/android/a/a/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/f;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/c/f;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/acmeaom/android/a/a/c/f;->c:[Lcom/acmeaom/android/a/a/c/f;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/c/f;

    return-object v0
.end method
