.class interface abstract Lam/sunrise/android/calendar/ui/contactpicker/r;
.super Ljava/lang/Object;
.source "SearchPeopleTask.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lam/sunrise/android/calendar/ui/contactpicker/r;->a:Landroid/net/Uri;

    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/contactpicker/r;->b:[Ljava/lang/String;

    return-void
.end method
