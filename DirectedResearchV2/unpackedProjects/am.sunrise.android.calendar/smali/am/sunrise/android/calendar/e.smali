.class public final enum Lam/sunrise/android/calendar/e;
.super Ljava/lang/Enum;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/e;

.field public static final enum b:Lam/sunrise/android/calendar/e;

.field public static final enum c:Lam/sunrise/android/calendar/e;

.field public static final enum d:Lam/sunrise/android/calendar/e;

.field static e:I

.field private static final synthetic h:[Lam/sunrise/android/calendar/e;


# instance fields
.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 494
    new-instance v0, Lam/sunrise/android/calendar/e;

    const-string v1, "FifteenMinutes"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/e;->a:Lam/sunrise/android/calendar/e;

    .line 495
    new-instance v0, Lam/sunrise/android/calendar/e;

    const-string v1, "ThirtyMinutes"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/e;->b:Lam/sunrise/android/calendar/e;

    .line 496
    new-instance v0, Lam/sunrise/android/calendar/e;

    const-string v1, "OneHour"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v6, v2}, Lam/sunrise/android/calendar/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/e;->c:Lam/sunrise/android/calendar/e;

    .line 497
    new-instance v0, Lam/sunrise/android/calendar/e;

    const-string v1, "Never"

    invoke-direct {v0, v1, v7, v3}, Lam/sunrise/android/calendar/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/e;->d:Lam/sunrise/android/calendar/e;

    .line 493
    const/4 v0, 0x4

    new-array v0, v0, [Lam/sunrise/android/calendar/e;

    sget-object v1, Lam/sunrise/android/calendar/e;->a:Lam/sunrise/android/calendar/e;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/e;->b:Lam/sunrise/android/calendar/e;

    aput-object v1, v0, v5

    sget-object v1, Lam/sunrise/android/calendar/e;->c:Lam/sunrise/android/calendar/e;

    aput-object v1, v0, v6

    sget-object v1, Lam/sunrise/android/calendar/e;->d:Lam/sunrise/android/calendar/e;

    aput-object v1, v0, v7

    sput-object v0, Lam/sunrise/android/calendar/e;->h:[Lam/sunrise/android/calendar/e;

    .line 524
    sput v3, Lam/sunrise/android/calendar/e;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 512
    invoke-static {}, Lam/sunrise/android/calendar/e;->c()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/e;->f:I

    .line 513
    mul-int/lit8 v0, p3, 0x3c

    int-to-long v0, v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/e;->g:J

    .line 514
    return-void
.end method

.method public static a(I)Lam/sunrise/android/calendar/e;
    .locals 2

    .prologue
    .line 503
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lam/sunrise/android/calendar/e;->values()[Lam/sunrise/android/calendar/e;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 504
    invoke-static {}, Lam/sunrise/android/calendar/e;->values()[Lam/sunrise/android/calendar/e;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lam/sunrise/android/calendar/e;->f:I

    if-ne v1, p0, :cond_0

    .line 505
    invoke-static {}, Lam/sunrise/android/calendar/e;->values()[Lam/sunrise/android/calendar/e;

    move-result-object v1

    aget-object v0, v1, v0

    .line 508
    :goto_1
    return-object v0

    .line 503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static c()I
    .locals 2

    .prologue
    .line 526
    sget v0, Lam/sunrise/android/calendar/e;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lam/sunrise/android/calendar/e;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/e;
    .locals 1

    .prologue
    .line 493
    const-class v0, Lam/sunrise/android/calendar/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/e;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/e;
    .locals 1

    .prologue
    .line 493
    sget-object v0, Lam/sunrise/android/calendar/e;->h:[Lam/sunrise/android/calendar/e;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lam/sunrise/android/calendar/e;->f:I

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lam/sunrise/android/calendar/e;->g:J

    return-wide v0
.end method
