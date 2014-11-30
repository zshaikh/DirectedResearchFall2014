.class public Lam/sunrise/android/calendar/reminders/g;
.super Ljava/lang/Object;
.source "RemindersDescriptor.java"


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    .line 53
    const-string v0, "calendar_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->b:I

    .line 54
    const-string v0, "event_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->c:I

    .line 55
    const-string v0, "event_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->d:I

    .line 56
    const-string v0, "event_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->e:I

    .line 57
    const-string v0, "event_is_all_day"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->f:I

    .line 58
    const-string v0, "event_start_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->g:I

    .line 59
    const-string v0, "event_end_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->h:I

    .line 60
    const-string v0, "event_timezone"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->i:I

    .line 61
    const-string v0, "event_reminders"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->j:I

    .line 62
    const-string v0, "event_rrule"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->k:I

    .line 63
    const-string v0, "occurrence_start_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->l:I

    .line 64
    const-string v0, "occurrence_end_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->m:I

    .line 65
    const-string v0, "occurrence_is_all_day"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->n:I

    .line 66
    const-string v0, "location_latitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->o:I

    .line 67
    const-string v0, "location_longitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->p:I

    .line 68
    const-string v0, "location_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->q:I

    .line 69
    const-string v0, "location_street"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->r:I

    .line 70
    const-string v0, "location_city"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->s:I

    .line 71
    const-string v0, "location_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->t:I

    .line 72
    const-string v0, "location_country"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/reminders/g;->u:I

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;)Lam/sunrise/android/calendar/reminders/g;
    .locals 6

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/reminders/i;->a:Landroid/net/Uri;

    sget-object v2, Lam/sunrise/android/calendar/reminders/i;->b:[Ljava/lang/String;

    sget-object v3, Lam/sunrise/android/calendar/reminders/i;->c:Ljava/lang/String;

    sget-object v4, Lam/sunrise/android/calendar/reminders/i;->d:[Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/reminders/i;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lam/sunrise/android/calendar/reminders/g;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/reminders/g;-><init>(Landroid/database/Cursor;)V

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    .line 106
    :cond_0
    return-void
.end method

.method public d()Lam/sunrise/android/calendar/reminders/h;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x3e8

    .line 109
    new-instance v3, Lam/sunrise/android/calendar/reminders/h;

    invoke-direct {v3}, Lam/sunrise/android/calendar/reminders/h;-><init>()V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->b:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->a:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->c:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->d:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->c:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->e:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->d:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->f:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lam/sunrise/android/calendar/reminders/h;->e:Z

    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->i:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->h:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->g:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v8

    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v6, p0, Lam/sunrise/android/calendar/reminders/g;->h:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    mul-long/2addr v6, v8

    .line 120
    iget-boolean v0, v3, Lam/sunrise/android/calendar/reminders/h;->e:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->f:Ljava/util/Calendar;

    .line 122
    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->g:Ljava/util/Calendar;

    .line 128
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->j:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 131
    array-length v0, v4

    new-array v0, v0, [J

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->i:[J

    move v0, v1

    .line 132
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 133
    iget-object v5, v3, Lam/sunrise/android/calendar/reminders/h;->i:[J

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->f:Ljava/util/Calendar;

    .line 125
    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->g:Ljava/util/Calendar;

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->i:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 138
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->k:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->j:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->n:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_9

    :goto_3
    iput-boolean v1, v3, Lam/sunrise/android/calendar/reminders/h;->m:Z

    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v1, p0, Lam/sunrise/android/calendar/reminders/g;->l:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    mul-long/2addr v0, v8

    .line 144
    iget-object v2, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v4, p0, Lam/sunrise/android/calendar/reminders/g;->m:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v8

    .line 146
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v2, v3, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    .line 147
    iget-object v2, v3, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_a

    .line 150
    const/4 v0, 0x0

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->l:Ljava/util/Calendar;

    .line 156
    :goto_4
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>()V

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 157
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->o:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 158
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->p:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 159
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->q:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 160
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->r:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 161
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->s:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 162
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->t:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 163
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/g;->a:Landroid/database/Cursor;

    iget v2, p0, Lam/sunrise/android/calendar/reminders/g;->u:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 167
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_4
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 170
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 173
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_6
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 176
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_7
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 180
    iget-object v1, v3, Lam/sunrise/android/calendar/reminders/h;->n:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    .line 183
    :cond_8
    return-object v3

    :cond_9
    move v1, v2

    .line 141
    goto/16 :goto_3

    .line 152
    :cond_a
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->l:Ljava/util/Calendar;

    .line 153
    iget-object v0, v3, Lam/sunrise/android/calendar/reminders/h;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_4
.end method
