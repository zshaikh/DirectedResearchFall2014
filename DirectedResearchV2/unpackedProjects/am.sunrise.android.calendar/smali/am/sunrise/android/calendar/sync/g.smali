.class public Lam/sunrise/android/calendar/sync/g;
.super Ljava/lang/Object;
.source "PendingActions.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lam/sunrise/android/calendar/b/e;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/sync/events/EventUpdated;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/g;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    .line 54
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    .line 55
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/sync/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 692
    new-instance v0, Lam/sunrise/android/calendar/sync/j;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/sync/j;-><init>(Lam/sunrise/android/calendar/sync/g;Lam/sunrise/android/calendar/sync/h;)V

    .line 693
    iput-object p1, v0, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    .line 694
    const-string v1, "calendar_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->b:I

    .line 695
    const-string v1, "event_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->c:I

    .line 696
    const-string v1, "event_source_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->d:I

    .line 697
    const-string v1, "event_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->e:I

    .line 698
    const-string v1, "event_description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->f:I

    .line 699
    const-string v1, "event_start_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->g:I

    .line 700
    const-string v1, "event_end_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->h:I

    .line 701
    const-string v1, "event_timezone"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->i:I

    .line 702
    const-string v1, "event_is_all_day"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->j:I

    .line 703
    const-string v1, "event_attendees"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->k:I

    .line 704
    const-string v1, "event_rrule"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->l:I

    .line 705
    const-string v1, "event_reminders"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->m:I

    .line 706
    const-string v1, "event_pending_actions"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->n:I

    .line 707
    const-string v1, "location_city"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->o:I

    .line 708
    const-string v1, "location_country"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->p:I

    .line 709
    const-string v1, "location_latitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->q:I

    .line 710
    const-string v1, "location_longitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->r:I

    .line 711
    const-string v1, "location_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->s:I

    .line 712
    const-string v1, "location_state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->t:I

    .line 713
    const-string v1, "location_street"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->u:I

    .line 714
    const-string v1, "location_viewport_nelat"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->v:I

    .line 715
    const-string v1, "location_viewport_nelng"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->w:I

    .line 716
    const-string v1, "location_viewport_swlat"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->x:I

    .line 717
    const-string v1, "location_viewport_swlng"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/sync/j;->y:I

    .line 720
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 126
    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/requests/EventRequest;-><init>()V

    .line 127
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->iCalUID:Ljava/lang/String;

    .line 128
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->d:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->title:Ljava/lang/String;

    .line 129
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->e:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->description:Ljava/lang/String;

    .line 130
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 131
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 132
    iget-boolean v0, p2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 134
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 144
    :goto_0
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    .line 146
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RRULE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->rules:[Ljava/lang/String;

    .line 149
    :cond_0
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move v0, v2

    .line 151
    :goto_1
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 152
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    aput-object v4, v3, v0

    .line 153
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 138
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    .line 139
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 141
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    goto/16 :goto_0

    .line 157
    :cond_2
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    move v0, v2

    .line 159
    :goto_2
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 160
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    new-instance v4, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;-><init>()V

    aput-object v4, v3, v0

    .line 161
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;->minutes:J

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_3
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    .line 167
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->name:Ljava/lang/String;

    .line 168
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    :cond_4
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    .line 173
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->street:Ljava/lang/String;

    .line 174
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->city:Ljava/lang/String;

    .line 175
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->state:Ljava/lang/String;

    .line 176
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->country:Ljava/lang/String;

    .line 178
    :cond_5
    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_6

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    .line 180
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    .line 181
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lat:D

    .line 182
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lng:D

    .line 188
    :cond_6
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getSkipNotificationEmail()Z

    move-result v0

    iput-boolean v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->skipNotificationEmail:Z

    .line 191
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/EventRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_7

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_7

    .line 195
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v3, v4, v0}, Lam/sunrise/android/calendar/sync/a;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 201
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    new-instance v4, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v6, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lam/sunrise/android/calendar/sync/events/EventUpdated;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_7
    :goto_3
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 216
    check-cast v0, Lretrofit/RetrofitError;

    .line 217
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-nez v3, :cond_8

    .line 218
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 240
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const-string v0, "PendingActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate -- exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 222
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "PendingActions"

    const-string v3, "onCreate: Event has already been deleted"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 231
    :sswitch_1
    const-string v0, "PendingActions"

    const-string v1, "onCreate: Error - NOTIFYING"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onCreate -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x199 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lam/sunrise/android/calendar/sync/j;)V
    .locals 1

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    .line 688
    :cond_0
    return-void
.end method

.method private b(Lam/sunrise/android/calendar/sync/j;)Lam/sunrise/android/calendar/sync/i;
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v1, 0x0

    .line 724
    new-instance v2, Lam/sunrise/android/calendar/sync/i;

    invoke-direct {v2}, Lam/sunrise/android/calendar/sync/i;-><init>()V

    .line 725
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->b:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    .line 726
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->c:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    .line 727
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->d:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->c:Ljava/lang/String;

    .line 728
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->e:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->d:Ljava/lang/String;

    .line 729
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->f:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->e:Ljava/lang/String;

    .line 730
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->i:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    .line 731
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->j:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lam/sunrise/android/calendar/sync/i;->i:Z

    .line 733
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->g:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    mul-long/2addr v3, v7

    .line 734
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v5, p1, Lam/sunrise/android/calendar/sync/j;->h:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    mul-long/2addr v5, v7

    .line 736
    iget-boolean v0, v2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_2

    .line 737
    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    .line 738
    invoke-static {v5, v6}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    .line 744
    :goto_1
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->l:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->k:Ljava/lang/String;

    .line 746
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->k:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 748
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    .line 751
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/sync/j;->m:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 753
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 755
    array-length v3, v0

    new-array v3, v3, [J

    iput-object v3, v2, Lam/sunrise/android/calendar/sync/i;->l:[J

    .line 756
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 757
    iget-object v3, v2, Lam/sunrise/android/calendar/sync/i;->l:[J

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 731
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, v2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    .line 741
    iget-object v0, v2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    goto :goto_1

    .line 762
    :cond_3
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->n:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/Offline;->a(Ljava/lang/String;)[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->m:[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    .line 774
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->o:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    .line 775
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->p:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    .line 776
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->q:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->p:D

    .line 777
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->r:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->q:D

    .line 778
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->s:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    .line 779
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->t:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    .line 780
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->u:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    .line 781
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->v:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->u:D

    .line 782
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->w:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->v:D

    .line 783
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->x:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->w:D

    .line 784
    iget-object v0, p1, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    iget v1, p1, Lam/sunrise/android/calendar/sync/j;->y:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lam/sunrise/android/calendar/sync/i;->x:D

    .line 786
    return-object v2
.end method

.method private b()Lam/sunrise/android/calendar/sync/j;
    .locals 6

    .prologue
    .line 667
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lam/sunrise/android/calendar/provider/i;->a()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/sync/k;->a:[Ljava/lang/String;

    const-string v3, "event_pending_actions is not null  AND event_pending_actions != \'\'"

    sget-object v4, Lam/sunrise/android/calendar/sync/k;->b:[Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/sync/k;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_1

    .line 672
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/sync/g;->a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/sync/j;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-object v0

    .line 676
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 678
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 247
    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/requests/EventRequest;-><init>()V

    .line 248
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->id:Ljava/lang/String;

    .line 249
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->d:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->title:Ljava/lang/String;

    .line 250
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->e:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->description:Ljava/lang/String;

    .line 251
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 252
    iget-boolean v0, p2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 254
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 256
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->calendarId:Ljava/lang/String;

    .line 271
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    .line 273
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RRULE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->rules:[Ljava/lang/String;

    .line 276
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    move v0, v2

    .line 278
    :goto_1
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 279
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    new-instance v4, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;-><init>()V

    aput-object v4, v3, v0

    .line 280
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;->minutes:J

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_2
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 261
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    .line 262
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 264
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 266
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :cond_3
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move v0, v2

    .line 286
    :goto_2
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 287
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    aput-object v4, v3, v0

    .line 288
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 292
    :cond_4
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 293
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    .line 294
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->name:Ljava/lang/String;

    .line 295
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 299
    :cond_5
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    .line 300
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->street:Ljava/lang/String;

    .line 301
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->city:Ljava/lang/String;

    .line 302
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->state:Ljava/lang/String;

    .line 303
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->country:Ljava/lang/String;

    .line 305
    :cond_6
    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_7

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_7

    .line 306
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    .line 307
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    .line 308
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lat:D

    .line 309
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lng:D

    .line 315
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->updated:J

    .line 316
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getSkipNotificationEmail()Z

    move-result v0

    iput-boolean v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->skipNotificationEmail:Z

    .line 321
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/EventRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_8

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8

    .line 325
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v3, v4, v0}, Lam/sunrise/android/calendar/sync/a;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 331
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 339
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    new-instance v4, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v6, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lam/sunrise/android/calendar/sync/events/EventUpdated;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_8
    :goto_3
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 349
    check-cast v0, Lretrofit/RetrofitError;

    .line 350
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-nez v3, :cond_9

    .line 351
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_9

    .line 353
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 373
    :cond_9
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v0, "PendingActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEdit -- exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 355
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v0, "PendingActions"

    const-string v3, "onEdit: Event has already been deleted"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 364
    :sswitch_1
    const-string v0, "PendingActions"

    const-string v1, "onEdit: Error - NOTIFYING"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onEdit -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x199 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 381
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getSkipNotificationEmail()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_0

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 386
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "cancelled"

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v2, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v2, v3, v0}, Lam/sunrise/android/calendar/sync/a;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    .line 397
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 398
    check-cast v0, Lretrofit/RetrofitError;

    .line 399
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 422
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    const-string v0, "PendingActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDelete -- exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v0, "PendingActions"

    const-string v2, "onDelete: Event has already been deleted"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 413
    :sswitch_1
    const-string v0, "PendingActions"

    const-string v1, "onDelete: Error - NOTIFYING"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onDelete -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x19a -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 429
    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/requests/EventRequest;-><init>()V

    .line 430
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->d:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->title:Ljava/lang/String;

    .line 431
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->e:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->description:Ljava/lang/String;

    .line 432
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 433
    iget-boolean v0, p2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 435
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 437
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 454
    :cond_0
    :goto_0
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->calendarId:Ljava/lang/String;

    .line 457
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    .line 458
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    new-instance v3, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 459
    iget-boolean v0, p2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getDateInMillis()J

    move-result-wide v3

    mul-long/2addr v3, v9

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 462
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v4, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    invoke-static {v4, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 471
    :goto_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;

    .line 472
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getParentSourceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;->id:Ljava/lang/String;

    .line 474
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 475
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    move v0, v2

    .line 476
    :goto_2
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 477
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    new-instance v4, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;-><init>()V

    aput-object v4, v3, v0

    .line 478
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->l:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;->minutes:J

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    :cond_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->f:Ljava/util/Calendar;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 444
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    .line 445
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 447
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->g:Ljava/util/Calendar;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 451
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    goto/16 :goto_0

    .line 464
    :cond_2
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->geTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getDateInMillis()J

    move-result-wide v5

    mul-long/2addr v5, v9

    invoke-static {v5, v6}, Lam/sunrise/android/calendar/b/d;->d(J)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 469
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;->original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->geTimeZone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    goto/16 :goto_1

    .line 482
    :cond_3
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 483
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move v0, v2

    .line 484
    :goto_3
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 485
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    aput-object v4, v3, v0

    .line 486
    iget-object v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v3, v3, v0

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 490
    :cond_4
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 491
    new-instance v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    .line 492
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->r:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->name:Ljava/lang/String;

    .line 493
    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 497
    :cond_5
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    .line 498
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->t:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->street:Ljava/lang/String;

    .line 499
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->n:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->city:Ljava/lang/String;

    .line 500
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->s:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->state:Ljava/lang/String;

    .line 501
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->address:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->o:Ljava/lang/String;

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Address;->country:Ljava/lang/String;

    .line 503
    :cond_6
    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    cmpl-double v0, v3, v7

    if-eqz v0, :cond_7

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    cmpl-double v0, v3, v7

    if-eqz v0, :cond_7

    .line 504
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    .line 505
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;-><init>()V

    iput-object v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    .line 506
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->p:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lat:D

    .line 507
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;->geometry:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;

    iget-wide v3, p2, Lam/sunrise/android/calendar/sync/i;->q:D

    iput-wide v3, v0, Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place$Geometry$Location;->lng:D

    .line 513
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->updated:J

    .line 514
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getSkipNotificationEmail()Z

    move-result v0

    iput-boolean v0, v1, Lam/sunrise/android/calendar/api/models/requests/EventRequest;->skipNotificationEmail:Z

    .line 517
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getParentEventId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/EventRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_8

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8

    .line 521
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v3, v4, v0}, Lam/sunrise/android/calendar/sync/a;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 527
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v4, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 535
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    new-instance v4, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v6, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lam/sunrise/android/calendar/sync/events/EventUpdated;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_8
    :goto_4
    return-void

    .line 542
    :catch_0
    move-exception v1

    .line 543
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 544
    check-cast v0, Lretrofit/RetrofitError;

    .line 545
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-nez v3, :cond_9

    .line 546
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_9

    .line 548
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    const-string v0, "PendingActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEditOccurrence -- exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 550
    :pswitch_0
    const-string v0, "PendingActions"

    const-string v1, "onEditOccurrence: Error - NOTIFYING"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onEditOccurrence -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 8

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v7, 0x0

    .line 567
    iget-boolean v0, p2, Lam/sunrise/android/calendar/sync/i;->i:Z

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getDateInMillis()J

    move-result-wide v0

    mul-long/2addr v0, v3

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 579
    :goto_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getSkipNotificationEmail()Z

    move-result v4

    iget-object v5, p2, Lam/sunrise/android/calendar/sync/i;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 584
    if-eqz v1, :cond_0

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 585
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "cancelled"

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v2, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v2, v3, v0}, Lam/sunrise/android/calendar/sync/a;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_0
    :goto_1
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getDateInMillis()J

    move-result-wide v1

    mul-long/2addr v1, v3

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 595
    :catch_0
    move-exception v1

    .line 596
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 597
    check-cast v0, Lretrofit/RetrofitError;

    .line 598
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-nez v2, :cond_2

    .line 599
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 624
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    const-string v0, "PendingActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteOccurrence -- exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 603
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "event_recurrence_exceptions"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v0, "PendingActions"

    const-string v2, "onDeleteOccurrence: Event has already been deleted"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 615
    :sswitch_1
    const-string v0, "PendingActions"

    const-string v1, "onDeleteOccurrence: Error - NOTIFYING"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onDeleteOccurrence -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x19a -> :sswitch_0
    .end sparse-switch
.end method

.method private f(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 632
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/RSVP;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getRSVPStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lam/sunrise/android/calendar/api/models/datas/RSVP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/RSVP;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 638
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p2, Lam/sunrise/android/calendar/sync/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/sync/a;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 640
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v1

    .line 645
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 646
    check-cast v0, Lretrofit/RetrofitError;

    .line 647
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 661
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    const-string v0, "PendingActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRSVP -- exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    :pswitch_0
    const-string v0, "PendingActions"

    const-string v1, "onRSVP: Error - NOTIFYING"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    new-instance v0, Lam/sunrise/android/calendar/sync/f;

    const-string v1, "PendingActions: onRSVP -- OAuthException"

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/g;->b()Lam/sunrise/android/calendar/sync/j;

    move-result-object v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    const-string v0, "PendingActions"

    const-string v2, "apply: No Pending Actions to Sync"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/sync/g;->b(Lam/sunrise/android/calendar/sync/j;)Lam/sunrise/android/calendar/sync/i;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    const-string v0, "PendingActions"

    const-string v4, "applyPendingActions: eventId=%s pendingActionsCount=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v3, Lam/sunrise/android/calendar/sync/i;->b:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v6, v3, Lam/sunrise/android/calendar/sync/i;->m:[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v0, v4, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v4, v3, Lam/sunrise/android/calendar/sync/i;->m:[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 71
    sget-object v7, Lam/sunrise/android/calendar/sync/h;->a:[I

    invoke-virtual {v6}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getRecordType()Lam/sunrise/android/calendar/sync/Offline$RecordType;

    move-result-object v8

    invoke-virtual {v8}, Lam/sunrise/android/calendar/sync/Offline$RecordType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 70
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :pswitch_0
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->a(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 77
    :pswitch_1
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->b(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 81
    :pswitch_2
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->c(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 85
    :pswitch_3
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->d(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 89
    :pswitch_4
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->e(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 93
    :pswitch_5
    invoke-direct {p0, v6, v3}, Lam/sunrise/android/calendar/sync/g;->f(Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;Lam/sunrise/android/calendar/sync/i;)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object v0, v2, Lam/sunrise/android/calendar/sync/j;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/sync/g;->a(Lam/sunrise/android/calendar/sync/j;)V

    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "am.sunrise.android.calendar"

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    .line 118
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, La/a/a/c;->d(Ljava/lang/Object;)V

    goto :goto_3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v2, "PendingActions"

    const-string v3, "applyPendingActions{Event}: Unable to apply occurrences batch. Error: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    const-string v2, "PendingActions"

    const-string v3, "applyPendingActions{Event}: Unable to apply occurrences batch. Error: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
