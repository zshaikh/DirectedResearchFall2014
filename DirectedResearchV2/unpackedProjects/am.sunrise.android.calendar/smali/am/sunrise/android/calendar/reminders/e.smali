.class interface abstract Lam/sunrise/android/calendar/reminders/e;
.super Ljava/lang/Object;
.source "AlarmReminderService.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 816
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person_name"

    aput-object v1, v0, v3

    const-string v1, "person_firstname"

    aput-object v1, v0, v4

    const-string v1, "person_lastname"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "person_email_1"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/reminders/e;->a:[Ljava/lang/String;

    .line 825
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "attending"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    sput-object v0, Lam/sunrise/android/calendar/reminders/e;->b:[Ljava/lang/String;

    .line 829
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/reminders/e;->c:Ljava/lang/String;

    return-void
.end method
