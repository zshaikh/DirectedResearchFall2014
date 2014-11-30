.class Lam/sunrise/android/calendar/ui/mainview/a/aa;
.super Landroid/os/AsyncTask;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lam/sunrise/android/calendar/ui/mainview/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/mainview/a/v;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/v;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 151
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    .line 152
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/q;
    .locals 15

    .prologue
    .line 156
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 158
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v10

    .line 162
    new-instance v0, Lc/a/a/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v0, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v11

    .line 167
    new-instance v12, Lam/sunrise/android/calendar/ui/mainview/a/q;

    invoke-direct {v12}, Lam/sunrise/android/calendar/ui/mainview/a/q;-><init>()V

    .line 169
    const-string v0, "RegularsLoaderTask"

    const-string v1, "doInBackground: startDate=%s endDate=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->c(Lam/sunrise/android/calendar/ui/mainview/a/v;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v7}, Lam/sunrise/android/calendar/provider/k;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/mainview/a/ab;->a:[Ljava/lang/String;

    const-string v3, "(calendar_is_enabled = ? AND occurrence_is_all_day = ? AND event_type != \'facebook:event\') OR (calendar_is_enabled = ? AND occurrence_is_all_day = ? AND event_type = \'facebook:event\' AND (occurrence_user_rsvp_status = \'attending\' OR occurrence_user_rsvp_status = \'unsure\'))"

    sget-object v4, Lam/sunrise/android/calendar/ui/mainview/a/ab;->b:[Ljava/lang/String;

    const-string v5, "occurrence_start_date, event_title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    .line 177
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 179
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    const-string v1, "occurrence_start_date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 182
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    const-string v1, "occurrence_end_date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 183
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    const-string v1, "event_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 185
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "RegularsLoaderTask"

    const-string v1, "no rows"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 190
    const-string v0, "RegularsLoaderTask"

    const-string v1, "doInBackground: rows=%d rangeSize=%d loaded from %s to %s (taking in account timezone conversion from UTC to device\'s timezone)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v13

    const/4 v13, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v13

    const/4 v13, 0x2

    aput-object v6, v5, v13

    const/4 v6, 0x3

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_1
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 195
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    const/4 v0, -0x1

    .line 199
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v5, v1}, Lam/sunrise/android/calendar/b/d;->g(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v5, v1}, Lam/sunrise/android/calendar/b/d;->e(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    invoke-static {v5}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 204
    new-instance v0, Lc/a/a/b;

    invoke-direct {v0, v8, v9, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v0, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v1

    .line 209
    if-ltz v1, :cond_3

    .line 210
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/l;

    .line 211
    if-nez v0, :cond_2

    .line 212
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/l;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;-><init>()V

    .line 213
    iput-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    .line 214
    iget-object v5, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    iget-object v5, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    .line 223
    :cond_4
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 224
    iget-object v5, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 226
    if-eqz v1, :cond_6

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v5}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v1, v5}, Lam/sunrise/android/calendar/b/d;->g(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v5}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v1, v5}, Lam/sunrise/android/calendar/b/d;->e(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 230
    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 231
    new-instance v5, Lc/a/a/b;

    invoke-direct {v5, v8, v9, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v6, Lc/a/a/b;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-direct {v6, v13, v14, v10}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v5, v6}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v5

    invoke-virtual {v5}, Lc/a/a/k;->c()I

    move-result v5

    .line 236
    if-ltz v5, :cond_6

    if-eq v5, v0, :cond_6

    .line 237
    const/4 v0, 0x0

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/l;

    .line 238
    if-nez v0, :cond_5

    .line 239
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/l;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;-><init>()V

    .line 240
    iput-object v1, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    .line 241
    iget-object v1, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    :cond_5
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    iget-object v1, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_6
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_7
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v2, v0, v11}, Lam/sunrise/android/calendar/ui/mainview/a/r;->a(Landroid/util/SparseArray;Ljava/util/Calendar;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    .line 260
    return-object v12

    .line 253
    :cond_8
    iget-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, v12, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->d(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/w;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->e(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lam/sunrise/android/calendar/ui/mainview/a/w;->a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    .line 270
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lam/sunrise/android/calendar/ui/mainview/a/q;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/aa;->a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    return-void
.end method
