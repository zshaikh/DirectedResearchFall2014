.class interface abstract Lam/sunrise/android/calendar/ui/contactpicker/m;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 436
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggested_people_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggested_people_firstname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggested_people_lastname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggested_people_email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggested_people_score"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/contactpicker/m;->a:[Ljava/lang/String;

    return-void
.end method
