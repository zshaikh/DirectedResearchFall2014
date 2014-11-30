.class interface abstract Lam/sunrise/android/calendar/ui/r;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    sget-object v0, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/ui/r;->a:Landroid/net/Uri;

    .line 449
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lam/sunrise/android/calendar/ui/r;->b:[Ljava/lang/String;

    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "0"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/r;->c:[Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/ui/r;->d:Ljava/lang/String;

    return-void
.end method
