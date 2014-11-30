.class public final enum Lam/sunrise/android/calendar/d;
.super Ljava/lang/Enum;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/d;

.field public static final enum b:Lam/sunrise/android/calendar/d;

.field public static final enum c:Lam/sunrise/android/calendar/d;

.field public static final enum d:Lam/sunrise/android/calendar/d;

.field public static final enum e:Lam/sunrise/android/calendar/d;

.field public static final enum f:Lam/sunrise/android/calendar/d;

.field static g:I

.field private static final synthetic k:[Lam/sunrise/android/calendar/d;


# instance fields
.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 350
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "None"

    const v2, 0x7f0f00f8

    invoke-direct {v0, v1, v6, v5, v2}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->a:Lam/sunrise/android/calendar/d;

    .line 351
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "SixAM"

    const/4 v2, 0x6

    const v3, 0x7f0f0169

    invoke-direct {v0, v1, v7, v2, v3}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->b:Lam/sunrise/android/calendar/d;

    .line 352
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "SevenAM"

    const/4 v2, 0x7

    const v3, 0x7f0f015a

    invoke-direct {v0, v1, v8, v2, v3}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->c:Lam/sunrise/android/calendar/d;

    .line 353
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "EightAM"

    const/16 v2, 0x8

    const v3, 0x7f0f00b4

    invoke-direct {v0, v1, v9, v2, v3}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->d:Lam/sunrise/android/calendar/d;

    .line 354
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "NineAM"

    const/4 v2, 0x4

    const/16 v3, 0x9

    const v4, 0x7f0f00f3

    invoke-direct {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->e:Lam/sunrise/android/calendar/d;

    .line 355
    new-instance v0, Lam/sunrise/android/calendar/d;

    const-string v1, "TenAM"

    const/4 v2, 0x5

    const/16 v3, 0xa

    const v4, 0x7f0f0170

    invoke-direct {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lam/sunrise/android/calendar/d;->f:Lam/sunrise/android/calendar/d;

    .line 349
    const/4 v0, 0x6

    new-array v0, v0, [Lam/sunrise/android/calendar/d;

    sget-object v1, Lam/sunrise/android/calendar/d;->a:Lam/sunrise/android/calendar/d;

    aput-object v1, v0, v6

    sget-object v1, Lam/sunrise/android/calendar/d;->b:Lam/sunrise/android/calendar/d;

    aput-object v1, v0, v7

    sget-object v1, Lam/sunrise/android/calendar/d;->c:Lam/sunrise/android/calendar/d;

    aput-object v1, v0, v8

    sget-object v1, Lam/sunrise/android/calendar/d;->d:Lam/sunrise/android/calendar/d;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lam/sunrise/android/calendar/d;->e:Lam/sunrise/android/calendar/d;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lam/sunrise/android/calendar/d;->f:Lam/sunrise/android/calendar/d;

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/d;->k:[Lam/sunrise/android/calendar/d;

    .line 388
    sput v5, Lam/sunrise/android/calendar/d;->g:I

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
    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 371
    invoke-static {}, Lam/sunrise/android/calendar/d;->b()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/d;->h:I

    .line 372
    iput p3, p0, Lam/sunrise/android/calendar/d;->i:I

    .line 373
    iput p4, p0, Lam/sunrise/android/calendar/d;->j:I

    .line 374
    return-void
.end method

.method public static a(J)Lam/sunrise/android/calendar/d;
    .locals 3

    .prologue
    .line 362
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lam/sunrise/android/calendar/d;->values()[Lam/sunrise/android/calendar/d;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 363
    invoke-static {}, Lam/sunrise/android/calendar/d;->values()[Lam/sunrise/android/calendar/d;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lam/sunrise/android/calendar/d;->h:I

    int-to-long v1, v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 364
    invoke-static {}, Lam/sunrise/android/calendar/d;->values()[Lam/sunrise/android/calendar/d;

    move-result-object v1

    aget-object v0, v1, v0

    .line 367
    :goto_1
    return-object v0

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b()I
    .locals 2

    .prologue
    .line 390
    sget v0, Lam/sunrise/android/calendar/d;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lam/sunrise/android/calendar/d;->g:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/d;
    .locals 1

    .prologue
    .line 349
    const-class v0, Lam/sunrise/android/calendar/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/d;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/d;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lam/sunrise/android/calendar/d;->k:[Lam/sunrise/android/calendar/d;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lam/sunrise/android/calendar/d;->i:I

    return v0
.end method
