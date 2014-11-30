.class public Lam/sunrise/android/calendar/authenticator/ui/facebook/f;
.super Lcom/facebook/UiLifecycleHelper;
.source "FacebookHelper.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/facebook/Session$StatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_birthday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_work_history"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_education_history"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user_events"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "friends_birthday"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "friends_work_history"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "friends_education_history"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    .line 48
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->b:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a()Lcom/facebook/Session;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    :cond_2
    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->b:Landroid/app/Activity;

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 84
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 86
    sget-object v2, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 87
    sget-object v2, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 88
    sget-object v2, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 90
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    if-eqz v2, :cond_4

    .line 91
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 94
    :cond_4
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a()Lcom/facebook/Session;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 104
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    const-string v1, "FacebookHelper"

    const-string v2, "requestRSVPPermission: session == null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "rsvp_event"

    aput-object v3, v2, v4

    invoke-direct {v1, p1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    .line 133
    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 144
    :goto_1
    return-void

    .line 122
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "FacebookHelper"

    const-string v2, "requestRSVPPermission: session is not opened"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_3
    const-string v0, "FacebookHelper"

    const-string v1, "requestRSVPPermission: No session found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "FacebookHelper"

    const-string v3, "canRSVP: permissions=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ","

    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "rsvp_event"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 61
    return-void
.end method
