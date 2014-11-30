.class Lam/sunrise/android/calendar/ui/event/a/g;
.super Ljava/lang/Object;
.source "RSVPDialog.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/a/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/a/a;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/a/g;->a:Lam/sunrise/android/calendar/ui/event/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 306
    if-eqz p2, :cond_0

    .line 307
    const-string v0, "RSVPDialog"

    const-string v1, "state=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    if-eqz p3, :cond_2

    .line 311
    const-string v0, "RSVPDialog"

    const-string v1, "exception (%s) -- %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "rsvp_event"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    :cond_1
    const-string v0, "RSVPDialog"

    const-string v1, "PermissionCallback: FAILURE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :goto_1
    return-void

    .line 314
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    const-string v0, "RSVPDialog"

    const-string v1, "isOpened == false"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_3
    const-string v0, "RSVPDialog"

    const-string v1, "permissions=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, ","

    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_4
    const-string v0, "RSVPDialog"

    const-string v1, "PermissionCallback: proceedWithRSVP"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/g;->a:Lam/sunrise/android/calendar/ui/event/a/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/a/a;->a(Lam/sunrise/android/calendar/ui/event/a/a;)V

    goto :goto_1
.end method
