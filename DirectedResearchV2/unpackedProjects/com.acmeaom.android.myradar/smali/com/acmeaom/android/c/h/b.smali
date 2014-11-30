.class public final enum Lcom/acmeaom/android/c/h/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/c/h/b;

.field public static final enum b:Lcom/acmeaom/android/c/h/b;

.field public static final enum c:Lcom/acmeaom/android/c/h/b;

.field public static final enum d:Lcom/acmeaom/android/c/h/b;

.field private static final synthetic e:[Lcom/acmeaom/android/c/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/acmeaom/android/c/h/b;

    const-string v1, "FWColor8888"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/b;->a:Lcom/acmeaom/android/c/h/b;

    .line 48
    new-instance v0, Lcom/acmeaom/android/c/h/b;

    const-string v1, "FWColor4444"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/b;->b:Lcom/acmeaom/android/c/h/b;

    .line 49
    new-instance v0, Lcom/acmeaom/android/c/h/b;

    const-string v1, "FWGray8"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/c/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/b;->c:Lcom/acmeaom/android/c/h/b;

    .line 50
    new-instance v0, Lcom/acmeaom/android/c/h/b;

    const-string v1, "FWGray88"

    invoke-direct {v0, v1, v5}, Lcom/acmeaom/android/c/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/b;->d:Lcom/acmeaom/android/c/h/b;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acmeaom/android/c/h/b;

    sget-object v1, Lcom/acmeaom/android/c/h/b;->a:Lcom/acmeaom/android/c/h/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/c/h/b;->b:Lcom/acmeaom/android/c/h/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/c/h/b;->c:Lcom/acmeaom/android/c/h/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/c/h/b;->d:Lcom/acmeaom/android/c/h/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/acmeaom/android/c/h/b;->e:[Lcom/acmeaom/android/c/h/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/c/h/b;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/acmeaom/android/c/h/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/c/h/b;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/acmeaom/android/c/h/b;->e:[Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/c/h/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/h/b;

    return-object v0
.end method
