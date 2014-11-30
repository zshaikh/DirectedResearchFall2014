.class public Lam/sunrise/android/calendar/ui/event/add/ab;
.super Landroid/os/AsyncTask;
.source "AddEventTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/event/add/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lam/sunrise/android/calendar/api/models/datas/Event;

.field private g:[Lam/sunrise/android/calendar/api/models/datas/Contact;

.field private h:Z


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;[Lam/sunrise/android/calendar/api/models/datas/Contact;Z)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->a:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->b:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->c:Landroid/content/ContentResolver;

    .line 50
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->d:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->e:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    .line 53
    iput-object p5, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->g:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 54
    iput-boolean p6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->h:Z

    .line 55
    return-void
.end method

.method private a()Lam/sunrise/android/calendar/ui/event/add/c;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/add/c;

    .line 183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    .prologue
    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v4

    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const/4 v1, 0x1

    .line 69
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    array-length v7, v6

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 75
    :goto_1
    iget-wide v8, v8, Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;->minutes:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->e:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/g;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->h:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v5, v1}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_id"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_calendar_id"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->e:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_source_id"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_is_editable"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_title"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->title:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_description"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->description:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_is_all_day"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v6}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->isAllDay()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_start_date"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v5, "event_end_date"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "event_timezone"

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "event_description"

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/datas/Event;->description:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "event_type"

    const-string v5, "event"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "event_rrule"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "event_reminders"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->g:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->g:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 110
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "person_name"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "person_firstname"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "person_lastname"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "person_email_1"

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "person_calendar_id"

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "person_event_id"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "person_rsvp_status"

    const-string v8, "notReplied"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 83
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->rules:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    const-string v6, "RRULE:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 124
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    .line 126
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    .line 127
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v4, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v4, v4, Lam/sunrise/android/calendar/api/models/datas/Place;->viewport:Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;

    .line 129
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/datas/Event;->calendarId:Ljava/lang/String;

    invoke-static {v5, v2}, Lam/sunrise/android/calendar/provider/i;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 132
    const-string v5, "location_name"

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->f:Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v6, v6, Lam/sunrise/android/calendar/api/models/datas/Place;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 133
    if-nez v0, :cond_a

    .line 134
    const-string v0, "location_city"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "location_street"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "location_state"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "location_country"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 144
    :goto_6
    if-eqz v1, :cond_6

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_b

    .line 145
    :cond_6
    const-string v0, "location_latitude"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_longitude"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 151
    :goto_7
    if-eqz v4, :cond_7

    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_c

    .line 152
    :cond_7
    const-string v0, "location_viewport_nelat"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelng"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    :goto_8
    if-eqz v4, :cond_8

    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_d

    .line 159
    :cond_8
    const-string v0, "location_viewport_swlat"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlng"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 166
    :goto_9
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_9
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/ab;->c:Landroid/content/ContentResolver;

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 171
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 178
    :goto_a
    return-object v0

    .line 139
    :cond_a
    const-string v5, "location_city"

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "location_street"

    iget-object v7, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->street:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "location_state"

    iget-object v7, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->state:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "location_country"

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->country:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6

    .line 148
    :cond_b
    const-string v0, "location_latitude"

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v5, v5, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "location_longitude"

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v6, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 155
    :cond_c
    const-string v0, "location_viewport_nelat"

    iget-object v1, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v5, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelng"

    iget-object v5, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v5, v5, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_8

    .line 162
    :cond_d
    const-string v0, "location_viewport_swlat"

    iget-object v1, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v5, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlng"

    iget-object v4, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_9

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "AddEventTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply batch. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a

    .line 174
    :catch_1
    move-exception v0

    .line 175
    const-string v1, "AddEventTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply batch. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/ab;->a()Lam/sunrise/android/calendar/ui/event/add/c;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 211
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/ab;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/ab;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 193
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/ab;->a()Lam/sunrise/android/calendar/ui/event/add/c;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0096

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/event/add/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method
