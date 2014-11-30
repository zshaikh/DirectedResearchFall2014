.class public final enum Lcom/acmeaom/android/a/f/k;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/f/k;

.field public static final enum b:Lcom/acmeaom/android/a/f/k;

.field public static final enum c:Lcom/acmeaom/android/a/f/k;

.field private static final synthetic e:[Lcom/acmeaom/android/a/f/k;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/acmeaom/android/a/f/k;

    const-string v1, "kMinSpriteWeight"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/acmeaom/android/a/f/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/acmeaom/android/a/f/k;->a:Lcom/acmeaom/android/a/f/k;

    .line 73
    new-instance v0, Lcom/acmeaom/android/a/f/k;

    const-string v1, "kMinShapeWeight"

    const v2, 0xdbba0

    invoke-direct {v0, v1, v4, v2}, Lcom/acmeaom/android/a/f/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/acmeaom/android/a/f/k;->b:Lcom/acmeaom/android/a/f/k;

    .line 74
    new-instance v0, Lcom/acmeaom/android/a/f/k;

    const-string v1, "kMinTileWeight"

    const v2, 0xf4240

    invoke-direct {v0, v1, v5, v2}, Lcom/acmeaom/android/a/f/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/acmeaom/android/a/f/k;->c:Lcom/acmeaom/android/a/f/k;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acmeaom/android/a/f/k;

    sget-object v1, Lcom/acmeaom/android/a/f/k;->a:Lcom/acmeaom/android/a/f/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/a/f/k;->b:Lcom/acmeaom/android/a/f/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/a/f/k;->c:Lcom/acmeaom/android/a/f/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/acmeaom/android/a/f/k;->e:[Lcom/acmeaom/android/a/f/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/acmeaom/android/a/f/k;->d:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/f/k;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/acmeaom/android/a/f/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/f/k;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/f/k;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/acmeaom/android/a/f/k;->e:[Lcom/acmeaom/android/a/f/k;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/f/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/f/k;

    return-object v0
.end method
