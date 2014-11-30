.class public final enum Lam/sunrise/android/calendar/ui/event/details/j;
.super Ljava/lang/Enum;
.source "EventAttendeesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/event/details/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/event/details/j;

.field public static final enum b:Lam/sunrise/android/calendar/ui/event/details/j;

.field public static final enum c:Lam/sunrise/android/calendar/ui/event/details/j;

.field public static final enum d:Lam/sunrise/android/calendar/ui/event/details/j;

.field public static final enum e:Lam/sunrise/android/calendar/ui/event/details/j;

.field private static final synthetic i:[Lam/sunrise/android/calendar/ui/event/details/j;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/j;

    const-string v1, "Attending"

    const-string v3, "attending"

    const v4, 0x7f0f012b

    const v5, 0x7f02011e

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/event/details/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/details/j;->a:Lam/sunrise/android/calendar/ui/event/details/j;

    .line 39
    new-instance v3, Lam/sunrise/android/calendar/ui/event/details/j;

    const-string v4, "Unsure"

    const-string v6, "unsure"

    const v7, 0x7f0f0132

    const v8, 0x7f020120

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lam/sunrise/android/calendar/ui/event/details/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lam/sunrise/android/calendar/ui/event/details/j;->b:Lam/sunrise/android/calendar/ui/event/details/j;

    .line 40
    new-instance v3, Lam/sunrise/android/calendar/ui/event/details/j;

    const-string v4, "Declined"

    const-string v6, "declined"

    const v7, 0x7f0f012d

    const v8, 0x7f02011f

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lam/sunrise/android/calendar/ui/event/details/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lam/sunrise/android/calendar/ui/event/details/j;->c:Lam/sunrise/android/calendar/ui/event/details/j;

    .line 41
    new-instance v3, Lam/sunrise/android/calendar/ui/event/details/j;

    const-string v4, "NotReplied"

    const-string v6, "notReplied"

    const v7, 0x7f0f012f

    const v8, 0x7f020121

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lam/sunrise/android/calendar/ui/event/details/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lam/sunrise/android/calendar/ui/event/details/j;->d:Lam/sunrise/android/calendar/ui/event/details/j;

    .line 42
    new-instance v3, Lam/sunrise/android/calendar/ui/event/details/j;

    const-string v4, "Ignored"

    const-string v6, "ignored"

    const v7, 0x7f0f012e

    const v8, 0x7f020121

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lam/sunrise/android/calendar/ui/event/details/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lam/sunrise/android/calendar/ui/event/details/j;->e:Lam/sunrise/android/calendar/ui/event/details/j;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/event/details/j;

    sget-object v1, Lam/sunrise/android/calendar/ui/event/details/j;->a:Lam/sunrise/android/calendar/ui/event/details/j;

    aput-object v1, v0, v2

    sget-object v1, Lam/sunrise/android/calendar/ui/event/details/j;->b:Lam/sunrise/android/calendar/ui/event/details/j;

    aput-object v1, v0, v9

    sget-object v1, Lam/sunrise/android/calendar/ui/event/details/j;->c:Lam/sunrise/android/calendar/ui/event/details/j;

    aput-object v1, v0, v10

    sget-object v1, Lam/sunrise/android/calendar/ui/event/details/j;->d:Lam/sunrise/android/calendar/ui/event/details/j;

    aput-object v1, v0, v11

    sget-object v1, Lam/sunrise/android/calendar/ui/event/details/j;->e:Lam/sunrise/android/calendar/ui/event/details/j;

    aput-object v1, v0, v12

    sput-object v0, Lam/sunrise/android/calendar/ui/event/details/j;->i:[Lam/sunrise/android/calendar/ui/event/details/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/details/j;->f:Ljava/lang/String;

    .line 59
    iput p4, p0, Lam/sunrise/android/calendar/ui/event/details/j;->g:I

    .line 60
    iput p5, p0, Lam/sunrise/android/calendar/ui/event/details/j;->h:I

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lam/sunrise/android/calendar/ui/event/details/j;->values()[Lam/sunrise/android/calendar/ui/event/details/j;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/details/j;->f:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lam/sunrise/android/calendar/ui/event/details/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/j;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/event/details/j;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lam/sunrise/android/calendar/ui/event/details/j;->i:[Lam/sunrise/android/calendar/ui/event/details/j;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/event/details/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/event/details/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/j;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/j;->h:I

    return v0
.end method
