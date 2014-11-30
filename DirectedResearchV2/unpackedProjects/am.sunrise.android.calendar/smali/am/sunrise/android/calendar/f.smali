.class public final enum Lam/sunrise/android/calendar/f;
.super Ljava/lang/Enum;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/f;

.field public static final enum b:Lam/sunrise/android/calendar/f;

.field public static final enum c:Lam/sunrise/android/calendar/f;

.field public static final enum d:Lam/sunrise/android/calendar/f;

.field public static final enum e:Lam/sunrise/android/calendar/f;

.field static f:I

.field private static final synthetic j:[Lam/sunrise/android/calendar/f;


# instance fields
.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 410
    new-instance v0, Lam/sunrise/android/calendar/f;

    const-string v1, "None"

    const v2, 0x7f0f00f8

    invoke-direct {v0, v1, v6, v5, v2}, Lam/sunrise/android/calendar/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/f;->a:Lam/sunrise/android/calendar/f;

    .line 411
    new-instance v0, Lam/sunrise/android/calendar/f;

    const-string v1, "NineAM"

    const/16 v2, 0x9

    const v3, 0x7f0f00f3

    invoke-direct {v0, v1, v7, v2, v3}, Lam/sunrise/android/calendar/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/f;->b:Lam/sunrise/android/calendar/f;

    .line 412
    new-instance v0, Lam/sunrise/android/calendar/f;

    const-string v1, "Noon"

    const/16 v2, 0xc

    const v3, 0x7f0f00f9

    invoke-direct {v0, v1, v8, v2, v3}, Lam/sunrise/android/calendar/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/f;->c:Lam/sunrise/android/calendar/f;

    .line 413
    new-instance v0, Lam/sunrise/android/calendar/f;

    const-string v1, "ThreePM"

    const/16 v2, 0xf

    const v3, 0x7f0f0175

    invoke-direct {v0, v1, v9, v2, v3}, Lam/sunrise/android/calendar/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/f;->d:Lam/sunrise/android/calendar/f;

    .line 414
    new-instance v0, Lam/sunrise/android/calendar/f;

    const-string v1, "SixPM"

    const/4 v2, 0x4

    const/16 v3, 0x12

    const v4, 0x7f0f016a

    invoke-direct {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/f;->e:Lam/sunrise/android/calendar/f;

    .line 409
    const/4 v0, 0x5

    new-array v0, v0, [Lam/sunrise/android/calendar/f;

    sget-object v1, Lam/sunrise/android/calendar/f;->a:Lam/sunrise/android/calendar/f;

    aput-object v1, v0, v6

    sget-object v1, Lam/sunrise/android/calendar/f;->b:Lam/sunrise/android/calendar/f;

    aput-object v1, v0, v7

    sget-object v1, Lam/sunrise/android/calendar/f;->c:Lam/sunrise/android/calendar/f;

    aput-object v1, v0, v8

    sget-object v1, Lam/sunrise/android/calendar/f;->d:Lam/sunrise/android/calendar/f;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lam/sunrise/android/calendar/f;->e:Lam/sunrise/android/calendar/f;

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/f;->j:[Lam/sunrise/android/calendar/f;

    .line 447
    sput v5, Lam/sunrise/android/calendar/f;->f:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 430
    invoke-static {}, Lam/sunrise/android/calendar/f;->b()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/f;->g:I

    .line 431
    iput p3, p0, Lam/sunrise/android/calendar/f;->h:I

    .line 432
    iput p4, p0, Lam/sunrise/android/calendar/f;->i:I

    .line 433
    return-void
.end method

.method public static a(J)Lam/sunrise/android/calendar/f;
    .locals 3

    .prologue
    .line 421
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lam/sunrise/android/calendar/f;->values()[Lam/sunrise/android/calendar/f;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 422
    invoke-static {}, Lam/sunrise/android/calendar/f;->values()[Lam/sunrise/android/calendar/f;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lam/sunrise/android/calendar/f;->g:I

    int-to-long v1, v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 423
    invoke-static {}, Lam/sunrise/android/calendar/f;->values()[Lam/sunrise/android/calendar/f;

    move-result-object v1

    aget-object v0, v1, v0

    .line 426
    :goto_1
    return-object v0

    .line 421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b()I
    .locals 2

    .prologue
    .line 449
    sget v0, Lam/sunrise/android/calendar/f;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lam/sunrise/android/calendar/f;->f:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/f;
    .locals 1

    .prologue
    .line 409
    const-class v0, Lam/sunrise/android/calendar/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/f;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/f;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lam/sunrise/android/calendar/f;->j:[Lam/sunrise/android/calendar/f;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lam/sunrise/android/calendar/f;->h:I

    return v0
.end method
