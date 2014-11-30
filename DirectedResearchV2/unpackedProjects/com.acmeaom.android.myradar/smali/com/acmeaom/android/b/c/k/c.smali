.class public final enum Lcom/acmeaom/android/b/c/k/c;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum b:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum c:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum d:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum e:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum f:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum g:Lcom/acmeaom/android/b/c/k/c;

.field public static final enum h:Lcom/acmeaom/android/b/c/k/c;

.field private static final synthetic i:[Lcom/acmeaom/android/b/c/k/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kUnknownSignificance"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->a:Lcom/acmeaom/android/b/c/k/c;

    .line 106
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kWarning"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->b:Lcom/acmeaom/android/b/c/k/c;

    .line 107
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kWatch"

    invoke-direct {v0, v1, v5}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->c:Lcom/acmeaom/android/b/c/k/c;

    .line 108
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kAdvisory"

    invoke-direct {v0, v1, v6}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->d:Lcom/acmeaom/android/b/c/k/c;

    .line 109
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kStatement"

    invoke-direct {v0, v1, v7}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->e:Lcom/acmeaom/android/b/c/k/c;

    .line 110
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kForecast"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->f:Lcom/acmeaom/android/b/c/k/c;

    .line 111
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kOutlook"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->g:Lcom/acmeaom/android/b/c/k/c;

    .line 112
    new-instance v0, Lcom/acmeaom/android/b/c/k/c;

    const-string v1, "kSynopsis"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/b/c/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->h:Lcom/acmeaom/android/b/c/k/c;

    .line 104
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/acmeaom/android/b/c/k/c;

    sget-object v1, Lcom/acmeaom/android/b/c/k/c;->a:Lcom/acmeaom/android/b/c/k/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/b/c/k/c;->b:Lcom/acmeaom/android/b/c/k/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/b/c/k/c;->c:Lcom/acmeaom/android/b/c/k/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/acmeaom/android/b/c/k/c;->d:Lcom/acmeaom/android/b/c/k/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/acmeaom/android/b/c/k/c;->e:Lcom/acmeaom/android/b/c/k/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/acmeaom/android/b/c/k/c;->f:Lcom/acmeaom/android/b/c/k/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/acmeaom/android/b/c/k/c;->g:Lcom/acmeaom/android/b/c/k/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/acmeaom/android/b/c/k/c;->h:Lcom/acmeaom/android/b/c/k/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/b/c/k/c;->i:[Lcom/acmeaom/android/b/c/k/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/b/c/k/c;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/acmeaom/android/b/c/k/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/k/c;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/b/c/k/c;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->i:[Lcom/acmeaom/android/b/c/k/c;

    invoke-virtual {v0}, [Lcom/acmeaom/android/b/c/k/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/b/c/k/c;

    return-object v0
.end method
