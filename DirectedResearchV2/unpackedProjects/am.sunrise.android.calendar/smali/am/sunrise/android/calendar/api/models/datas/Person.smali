.class public Lam/sunrise/android/calendar/api/models/datas/Person;
.super Ljava/lang/Object;
.source "Person.java"


# instance fields
.field public birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private birthdayTimeStamp:J

.field public emails:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isSelf:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "self"
    .end annotation
.end field

.field public lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rsvpStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthdayTimeStamp:J

    .line 57
    return-void
.end method


# virtual methods
.method public getBirthdayTimeStampUTC(Lam/sunrise/android/calendar/b/e;)J
    .locals 4

    .prologue
    .line 45
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthdayTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 46
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthdayTimeStamp:J

    .line 54
    :goto_0
    return-wide v0

    .line 49
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthday:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthday:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthdayTimeStamp:J

    .line 54
    :cond_1
    iget-wide v0, p0, Lam/sunrise/android/calendar/api/models/datas/Person;->birthdayTimeStamp:J

    goto :goto_0
.end method
