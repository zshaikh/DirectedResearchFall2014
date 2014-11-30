.class public final enum Lcom/acmeaom/android/a/a/b/ae;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/b/ae;

.field public static final enum b:Lcom/acmeaom/android/a/a/b/ae;

.field public static final enum c:Lcom/acmeaom/android/a/a/b/ae;

.field public static final enum d:Lcom/acmeaom/android/a/a/b/ae;

.field public static final enum e:Lcom/acmeaom/android/a/a/b/ae;

.field private static final synthetic g:[Lcom/acmeaom/android/a/a/b/ae;


# instance fields
.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/a/b/ae;

    const-string v1, "NSOperationQueuePriorityVeryLow"

    const-wide/16 v2, -0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/acmeaom/android/a/a/b/ae;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->a:Lcom/acmeaom/android/a/a/b/ae;

    .line 5
    new-instance v0, Lcom/acmeaom/android/a/a/b/ae;

    const-string v1, "NSOperationQueuePriorityLow"

    const-wide/16 v2, -0x4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/acmeaom/android/a/a/b/ae;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->b:Lcom/acmeaom/android/a/a/b/ae;

    .line 6
    new-instance v0, Lcom/acmeaom/android/a/a/b/ae;

    const-string v1, "NSOperationQueuePriorityNormal"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/acmeaom/android/a/a/b/ae;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->c:Lcom/acmeaom/android/a/a/b/ae;

    .line 7
    new-instance v0, Lcom/acmeaom/android/a/a/b/ae;

    const-string v1, "NSOperationQueuePriorityHigh"

    const-wide/16 v2, 0x4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/acmeaom/android/a/a/b/ae;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->d:Lcom/acmeaom/android/a/a/b/ae;

    .line 8
    new-instance v0, Lcom/acmeaom/android/a/a/b/ae;

    const-string v1, "NSOperationQueuePriorityVeryHigh"

    const-wide/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/acmeaom/android/a/a/b/ae;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->e:Lcom/acmeaom/android/a/a/b/ae;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/acmeaom/android/a/a/b/ae;

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->a:Lcom/acmeaom/android/a/a/b/ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->b:Lcom/acmeaom/android/a/a/b/ae;

    aput-object v1, v0, v5

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->c:Lcom/acmeaom/android/a/a/b/ae;

    aput-object v1, v0, v6

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->d:Lcom/acmeaom/android/a/a/b/ae;

    aput-object v1, v0, v7

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->e:Lcom/acmeaom/android/a/a/b/ae;

    aput-object v1, v0, v8

    sput-object v0, Lcom/acmeaom/android/a/a/b/ae;->g:[Lcom/acmeaom/android/a/a/b/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-wide p3, p0, Lcom/acmeaom/android/a/a/b/ae;->f:J

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/ae;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/acmeaom/android/a/a/b/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/ae;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/b/ae;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/acmeaom/android/a/a/b/ae;->g:[Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/b/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/b/ae;

    return-object v0
.end method
