.class public Lam/sunrise/android/calendar/ui/event/q;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "NotificationEmailDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 5

    .prologue
    const v4, 0x7f0f013c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v0, v0

    if-ne v0, v3, :cond_2

    .line 49
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v0, v0, v2

    .line 50
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v2, "am.sunrise.android.calendar.extra.MESSAGE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lam/sunrise/android/calendar/ui/event/q;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/q;-><init>()V

    const-string v2, "NotificationEmailDialog"

    invoke-static {p0, v0, p1, v1, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 67
    return-void

    .line 52
    :cond_0
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;[Lam/sunrise/android/calendar/api/models/datas/Contact;)V
    .locals 5

    .prologue
    const v4, 0x7f0f013c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    array-length v0, p2

    if-ne v0, v3, :cond_2

    .line 75
    aget-object v0, p2, v2

    .line 76
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v2, "am.sunrise.android.calendar.extra.MESSAGE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lam/sunrise/android/calendar/ui/event/q;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/q;-><init>()V

    const-string v2, "NotificationEmailDialog"

    invoke-static {p0, v0, p1, v1, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 93
    return-void

    .line 78
    :cond_0
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()Lam/sunrise/android/calendar/ui/event/r;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/q;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/r;

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lam/sunrise/android/calendar/ui/event/r;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 117
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/q;->g()Lam/sunrise/android/calendar/ui/event/r;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/r;->a()V

    .line 121
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/q;->d(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/q;->e(I)V

    .line 102
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/q;->c(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->e()V

    .line 126
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/q;->g()Lam/sunrise/android/calendar/ui/event/r;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/r;->b()V

    .line 130
    :cond_0
    return-void
.end method
