.class public Lam/sunrise/android/calendar/ui/event/info/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

.field public B:[J

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Calendar;

.field public n:Ljava/util/Calendar;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

.field public x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

.field public y:I

.field public z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/a;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/a;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 205
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 207
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 208
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 213
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->q:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    .line 220
    const-class v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 221
    const-class v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    .line 223
    const-class v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 225
    array-length v1, v0

    new-array v1, v1, [Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 226
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :cond_0
    const-class v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    if-nez v0, :cond_2

    .line 231
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    .line 236
    :goto_1
    return-void

    .line 210
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 211
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 233
    :cond_2
    new-array v0, v0, [J

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    instance-of v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-nez v0, :cond_1

    .line 76
    const-string v0, "EventInfo"

    const-string v2, "equals: object is NOT an EventInfo"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    check-cast p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    iget-boolean v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    iget-boolean v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 94
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-nez v0, :cond_2

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :cond_4
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    iget v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    if-ne v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v0, v0

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 116
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 117
    :goto_2
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 118
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v3, v3, v0

    iget-object v4, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 81
    goto/16 :goto_1

    .line 124
    :cond_9
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-nez v0, :cond_a

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-nez v0, :cond_0

    :cond_a
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_0

    :cond_b
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :cond_c
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v0, v0

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 137
    :cond_f
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 138
    :goto_3
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 139
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    aget-wide v3, v3, v0

    iget-object v5, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    move v1, v2

    .line 145
    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_1
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_1
.end method
