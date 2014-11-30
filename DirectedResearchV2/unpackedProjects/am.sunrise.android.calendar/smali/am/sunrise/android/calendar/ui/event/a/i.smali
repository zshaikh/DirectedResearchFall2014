.class final enum Lam/sunrise/android/calendar/ui/event/a/i;
.super Ljava/lang/Enum;
.source "RSVPDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/event/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/event/a/i;

.field public static final enum b:Lam/sunrise/android/calendar/ui/event/a/i;

.field public static final enum c:Lam/sunrise/android/calendar/ui/event/a/i;

.field private static final synthetic f:[Lam/sunrise/android/calendar/ui/event/a/i;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/i;

    const-string v1, "ATTENDING"

    const-string v2, "attending"

    invoke-direct {v0, v1, v3, v2}, Lam/sunrise/android/calendar/ui/event/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/a/i;->a:Lam/sunrise/android/calendar/ui/event/a/i;

    .line 82
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/i;

    const-string v1, "UNSURE"

    const-string v2, "unsure"

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/event/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/a/i;->b:Lam/sunrise/android/calendar/ui/event/a/i;

    .line 83
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/i;

    const-string v1, "DECLINED"

    const-string v2, "declined"

    invoke-direct {v0, v1, v5, v2}, Lam/sunrise/android/calendar/ui/event/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/a/i;->c:Lam/sunrise/android/calendar/ui/event/a/i;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/event/a/i;

    sget-object v1, Lam/sunrise/android/calendar/ui/event/a/i;->a:Lam/sunrise/android/calendar/ui/event/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/event/a/i;->b:Lam/sunrise/android/calendar/ui/event/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lam/sunrise/android/calendar/ui/event/a/i;->c:Lam/sunrise/android/calendar/ui/event/a/i;

    aput-object v1, v0, v5

    sput-object v0, Lam/sunrise/android/calendar/ui/event/a/i;->f:[Lam/sunrise/android/calendar/ui/event/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    invoke-static {}, Lam/sunrise/android/calendar/ui/event/a/j;->a()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/a/i;->d:I

    .line 90
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/a/i;->e:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/a/j;->a(I)I

    .line 92
    return-void
.end method

.method public static a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/a/i;
    .locals 5

    .prologue
    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lam/sunrise/android/calendar/ui/event/a/i;->values()[Lam/sunrise/android/calendar/ui/event/a/i;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 97
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/a/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    :goto_1
    return-object v0

    .line 96
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/a/i;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lam/sunrise/android/calendar/ui/event/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/a/i;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/event/a/i;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lam/sunrise/android/calendar/ui/event/a/i;->f:[Lam/sunrise/android/calendar/ui/event/a/i;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/event/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/event/a/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/a/i;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/i;->e:Ljava/lang/String;

    return-object v0
.end method
