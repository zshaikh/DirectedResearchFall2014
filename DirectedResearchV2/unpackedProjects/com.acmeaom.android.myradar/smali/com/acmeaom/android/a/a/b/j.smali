.class public final Lcom/acmeaom/android/a/a/b/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static c:Ljava/util/Calendar;

.field private static d:Ljava/lang/Long;

.field private static e:Ljava/lang/Long;

.field private static f:Ljava/util/Calendar;


# instance fields
.field private final a:J

.field private final b:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/b/aj;)V
    .locals 5

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->j()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 40
    iget-wide v0, p1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    double-to-int v0, v0

    .line 41
    iget-wide v1, p1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    int-to-double v3, v0

    sub-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 42
    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/a/a/b/j;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;Ljava/util/Calendar;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/b/aj;Ljava/util/Calendar;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3c

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 53
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    .line 54
    iget-wide v0, p1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 55
    div-long v2, v0, v4

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    .line 56
    mul-long/2addr v4, v2

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 57
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset exceeds implemented domain, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    const/16 v5, 0xa

    long-to-int v2, v2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 61
    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    const/16 v3, 0xe

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 66
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    .line 67
    return-void
.end method

.method public static a(D)Lcom/acmeaom/android/a/a/b/j;
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->k()V

    .line 179
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sget-object v2, Lcom/acmeaom/android/a/a/b/j;->f:Ljava/util/Calendar;

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/b/j;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->k()V

    .line 184
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    sget-object v1, Lcom/acmeaom/android/a/a/b/j;->f:Ljava/util/Calendar;

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/a/a/b/j;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/a/a/b/j;)V

    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/a/a/b/aj;
    .locals 6

    .prologue
    .line 107
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/a/a/b/j;->d:Ljava/lang/Long;

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/a/a/b/j;->e:Ljava/lang/Long;

    .line 112
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/acmeaom/android/a/a/b/j;->e:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 113
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->j()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 114
    new-instance v2, Lcom/acmeaom/android/a/a/b/aj;

    long-to-double v0, v0

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    return-object v2
.end method

.method public static b(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/b/j;
    .locals 5

    .prologue
    .line 192
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    iget-wide v1, p0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/j;-><init>(J)V

    return-object v0
.end method

.method public static h()Lcom/acmeaom/android/a/a/b/j;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, v2, v2, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/j;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static i()Lcom/acmeaom/android/a/a/b/j;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/j;-><init>(J)V

    return-object v0
.end method

.method private static j()Ljava/util/Calendar;
    .locals 8

    .prologue
    .line 92
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->c:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 93
    const-class v7, Lcom/acmeaom/android/a/a/b/j;

    monitor-enter v7

    .line 95
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/j;->c:Ljava/util/Calendar;

    .line 96
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->c:Ljava/util/Calendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->c:Ljava/util/Calendar;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static k()V
    .locals 8

    .prologue
    .line 145
    sget-object v0, Lcom/acmeaom/android/a/a/b/j;->f:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 146
    const-class v7, Lcom/acmeaom/android/a/a/b/j;

    monitor-enter v7

    .line 147
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 149
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 150
    sput-object v0, Lcom/acmeaom/android/a/a/b/j;->f:Ljava/util/Calendar;

    .line 151
    monitor-exit v7

    .line 153
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0
.end method

.method public c()Lcom/acmeaom/android/a/a/b/aj;
    .locals 7

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 118
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v1, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 122
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    iget-object v3, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    long-to-double v1, v1

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    goto :goto_0
.end method

.method public d()J
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 128
    iget-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v2

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public e()Ljava/util/Date;
    .locals 7

    .prologue
    .line 135
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lcom/acmeaom/android/a/a/b/aj;
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->k()V

    .line 157
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 158
    :goto_0
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public g()J
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 171
    iget-wide v0, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 173
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    iget-wide v0, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v2, 0x41cdcd6500000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NSDate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/acmeaom/android/a/a/b/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NSDate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/j;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
