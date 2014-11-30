.class public Lam/sunrise/android/calendar/ui/event/details/n;
.super Lam/sunrise/android/calendar/ui/c;
.source "EventDetailsAttendeesFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/details/ac;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:Lam/sunrise/android/calendar/ui/event/details/r;

.field private g:Lam/sunrise/android/calendar/ui/event/details/t;

.field private h:Landroid/widget/ListView;

.field private i:Lam/sunrise/android/calendar/ui/event/details/h;

.field private j:Lam/sunrise/android/calendar/ui/event/details/ab;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 66
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/r;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/details/r;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;Lam/sunrise/android/calendar/ui/event/details/o;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->f:Lam/sunrise/android/calendar/ui/event/details/r;

    .line 67
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/t;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/details/t;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;Lam/sunrise/android/calendar/ui/event/details/o;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->g:Lam/sunrise/android/calendar/ui/event/details/t;

    .line 76
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/n;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/n;->a(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/event/details/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 209
    if-eqz v0, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    aget-object v1, v1, v2

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/PersonProfile;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/PersonProfile;->id:Ljava/lang/String;

    .line 214
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fb://profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/details/n;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v1

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.facebook.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/details/n;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/n;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->k:Z

    return v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/n;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->k:Z

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/t;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->g:Lam/sunrise/android/calendar/ui/event/details/t;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/n;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/n;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 224
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/i;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/details/n;->startActivity(Landroid/content/Intent;)V

    .line 233
    :cond_0
    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/h;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->i:Lam/sunrise/android/calendar/ui/event/details/h;

    return-object v0
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    return-object v0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/event/details/n;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 186
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/n;->g:Lam/sunrise/android/calendar/ui/event/details/t;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 189
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->a()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->k:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/n;->f:Lam/sunrise/android/calendar/ui/event/details/r;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 169
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_1

    .line 82
    const-string v0, "saved_calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->a:Ljava/lang/String;

    .line 83
    const-string v0, "saved_event_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    .line 84
    const-string v0, "saved_event_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->c:Ljava/lang/String;

    .line 85
    const-string v0, "saved_is_facebook_event"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    .line 86
    const-string v0, "saved_attendees_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->e:I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.IS_FACEBOOK_EVENT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    .line 92
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ATTENDEES_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->e:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f030052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V
    .locals 4

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getOldEventId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getNewEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    .line 196
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/n;->f:Lam/sunrise/android/calendar/ui/event/details/r;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 205
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 181
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, La/a/a/c;->a(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onResume()V

    .line 174
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 175
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {v0, v1}, La/a/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/n;->onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V

    .line 176
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "saved_calendar_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "saved_event_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "saved_event_title"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "saved_is_facebook_event"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v0, "saved_attendees_count"

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "saved_attendees"

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/event/details/ab;->a()[Lam/sunrise/android/calendar/api/models/datas/Person;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "saved_can_load_more"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 117
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    .line 119
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->d:Z

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/event/details/ab;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/event/details/ac;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    const-string v0, "saved_attendees"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, [Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 126
    const-string v1, "saved_can_load_more"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->k:Z

    .line 127
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/ab;->b()V

    .line 128
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->j:Lam/sunrise/android/calendar/ui/event/details/ab;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->a([Lam/sunrise/android/calendar/api/models/datas/Person;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/o;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/o;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/p;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/p;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/h;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/n;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->i:Lam/sunrise/android/calendar/ui/event/details/h;

    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/n;->i:Lam/sunrise/android/calendar/ui/event/details/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/n;->h:Landroid/widget/ListView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/q;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/q;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
