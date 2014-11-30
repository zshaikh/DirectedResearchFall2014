.class public final enum Lam/sunrise/android/calendar/ui/settings/a/c;
.super Ljava/lang/Enum;
.source "SettingsAddAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lam/sunrise/android/calendar/ui/settings/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lam/sunrise/android/calendar/ui/settings/a/c;

.field public static final enum b:Lam/sunrise/android/calendar/ui/settings/a/c;

.field private static e:I

.field private static final synthetic f:[Lam/sunrise/android/calendar/ui/settings/a/c;


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/c;

    const-string v1, "Calendar"

    const v2, 0x7f0f0013

    invoke-direct {v0, v1, v3, v2}, Lam/sunrise/android/calendar/ui/settings/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/a/c;->a:Lam/sunrise/android/calendar/ui/settings/a/c;

    .line 28
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/c;

    const-string v1, "Application"

    const v2, 0x7f0f0012

    invoke-direct {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/settings/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/a/c;->b:Lam/sunrise/android/calendar/ui/settings/a/c;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/settings/a/c;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/a/c;->a:Lam/sunrise/android/calendar/ui/settings/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/a/c;->b:Lam/sunrise/android/calendar/ui/settings/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/a/c;->f:[Lam/sunrise/android/calendar/ui/settings/a/c;

    .line 46
    const/4 v0, -0x1

    sput v0, Lam/sunrise/android/calendar/ui/settings/a/c;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/a/c;->c()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/c;->c:I

    .line 35
    iput p3, p0, Lam/sunrise/android/calendar/ui/settings/a/c;->d:I

    .line 36
    return-void
.end method

.method private static c()I
    .locals 2

    .prologue
    .line 48
    sget v0, Lam/sunrise/android/calendar/ui/settings/a/c;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lam/sunrise/android/calendar/ui/settings/a/c;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/c;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lam/sunrise/android/calendar/ui/settings/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/c;

    return-object v0
.end method

.method public static values()[Lam/sunrise/android/calendar/ui/settings/a/c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/a/c;->f:[Lam/sunrise/android/calendar/ui/settings/a/c;

    invoke-virtual {v0}, [Lam/sunrise/android/calendar/ui/settings/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/a/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/c;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/c;->d:I

    return v0
.end method
