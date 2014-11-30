.class public Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
.super Ljava/lang/Object;
.source "DateDescriptor.java"


# instance fields
.field private _timeZonePatched:Z

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dateTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timestamp:J

.field public timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timestamp:J

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->_timeZonePatched:Z

    return-void
.end method

.method private parse(Lam/sunrise/android/calendar/b/e;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-boolean v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->_timeZonePatched:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->_timeZonePatched:Z

    .line 68
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 41
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timestamp:J

    .line 61
    :goto_0
    return-wide v0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->parse(Lam/sunrise/android/calendar/b/e;)Ljava/util/Calendar;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7b2

    if-ge v1, v2, :cond_1

    .line 51
    const/16 v1, 0x7b4

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 54
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timestamp:J

    .line 61
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timestamp:J

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
