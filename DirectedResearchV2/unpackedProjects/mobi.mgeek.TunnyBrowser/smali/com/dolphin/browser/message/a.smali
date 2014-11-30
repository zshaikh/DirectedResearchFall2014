.class public Lcom/dolphin/browser/message/a;
.super Ljava/lang/Object;
.source "AlarmController.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/AlarmManager;

.field private final c:Landroid/app/PendingIntent;

.field private d:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "C2DMService"

    sput-object v0, Lcom/dolphin/browser/message/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/message/a;->d:Ljava/util/Random;

    .line 25
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/dolphin/browser/message/a;->b:Landroid/app/AlarmManager;

    .line 26
    iput-object p2, p0, Lcom/dolphin/browser/message/a;->c:Landroid/app/PendingIntent;

    .line 27
    return-void
.end method

.method private b(Ljava/util/Date;)Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/Date;)Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()J
    .locals 8

    .prologue
    const-wide/32 v6, 0xdbba00

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 52
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 53
    new-instance v3, Ljava/util/Date;

    add-long v4, v1, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 54
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/a;->b(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/dolphin/browser/message/a;->c(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/a;->d(Ljava/util/Date;)J

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    add-long v0, v1, v6

    goto :goto_0
.end method

.method private d(Ljava/util/Date;)J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/util/Date;->setHours(I)V

    .line 77
    invoke-virtual {p1, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 78
    invoke-virtual {p1, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/message/a;->d:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 80
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 81
    const-wide v0, 0x7fffffffffffffffL

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x6ddd00

    rem-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xdbba00

    .line 30
    sget-object v0, Lcom/dolphin/browser/message/a;->a:Ljava/lang/String;

    const-string v1, "setupAlarm trigger after : 14400000ms"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/message/a;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/dolphin/browser/message/a;->c:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 33
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/dolphin/browser/message/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupAlarm trigger at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/message/a;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/message/a;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 43
    return-void
.end method

.method public a(Ljava/util/Date;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 64
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/message/a;->a:Ljava/lang/String;

    const-string v1, "cancelAlarm"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/message/a;->b:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/dolphin/browser/message/a;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 38
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/message/a;->d()J

    move-result-wide v0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/message/a;->a(J)V

    .line 48
    return-void
.end method
