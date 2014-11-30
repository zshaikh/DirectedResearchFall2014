.class interface abstract Lam/sunrise/android/calendar/ui/settings/ac;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 606
    sget-object v0, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/ac;->a:Landroid/net/Uri;

    .line 607
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/ac;->b:[Ljava/lang/String;

    return-void
.end method
