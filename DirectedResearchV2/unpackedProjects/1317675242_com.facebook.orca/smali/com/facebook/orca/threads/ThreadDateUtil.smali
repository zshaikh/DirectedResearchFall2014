.class public Lcom/facebook/orca/threads/ThreadDateUtil;
.super Ljava/lang/Object;
.source "ThreadDateUtil.java"


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/text/SimpleDateFormat;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->a:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->b:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->c:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->d:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->e:Ljava/text/SimpleDateFormat;

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 39
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 42
    :cond_0
    if-ge v0, v6, :cond_1

    .line 43
    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    const v2, 0x7f0a009d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x3c

    .line 46
    if-ge v0, v6, :cond_2

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    const v2, 0x7f0a009e

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x3c

    .line 50
    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    const v2, 0x7f0a009f

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 55
    div-int/lit8 v0, v0, 0x18

    .line 56
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_4
    const/16 v2, 0xb4

    if-ge v0, v2, :cond_5

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    sub-long/2addr v0, p1

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    div-long/2addr v0, v2

    .line 69
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-wide/16 v4, 0xb4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
