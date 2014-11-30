.class interface abstract Lam/sunrise/android/calendar/ui/event/details/s;
.super Ljava/lang/Object;
.source "EventDetailsAttendeesFragment.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person_email_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "person_rsvp_status"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/event/details/s;->a:[Ljava/lang/String;

    return-void
.end method
