.class public Lcom/a/a;
.super Ljava/lang/Object;
.source "BelugaBoostAnalytics.java"


# static fields
.field private static a:Lcom/a/b;

.field private static b:Z

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Lcom/a/a;

.field private static h:Ljava/util/HashMap;

.field private static i:Landroid/content/Context;

.field private static j:I

.field private static k:Lcom/a/b/c;


# instance fields
.field private volatile l:Z

.field private final m:Lcom/a/a/g;

.field private final n:Lcom/a/c;

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a;->a:Lcom/a/b;

    .line 24
    sput-boolean v3, Lcom/a/a;->b:Z

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://acns.belugaboost.com"

    aput-object v1, v0, v3

    const-string v1, "https://aens.belugaboost.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a;->c:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://acn.belugaboost.com"

    aput-object v1, v0, v3

    const-string v1, "http://aen.belugaboost.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a;->d:[Ljava/lang/String;

    .line 29
    sput v3, Lcom/a/a;->e:I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/a/a;->d:[Ljava/lang/String;

    sget v2, Lcom/a/a;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/track/1/logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a;->f:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a;->h:Ljava/util/HashMap;

    .line 50
    sput v3, Lcom/a/a;->j:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const v2, 0xea60

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a;->l:Z

    .line 64
    iput-wide v3, p0, Lcom/a/a;->o:J

    .line 66
    iput-wide v3, p0, Lcom/a/a;->p:J

    .line 141
    sget v0, Lcom/a/a;->j:I

    if-lt v0, v2, :cond_0

    sget v0, Lcom/a/a;->j:I

    const v1, 0x927c0

    if-le v0, v1, :cond_1

    .line 142
    :cond_0
    sput v2, Lcom/a/a;->j:I

    .line 145
    :cond_1
    sget-object v0, Lcom/a/a;->i:Landroid/content/Context;

    invoke-static {}, Lcom/a/a/a/k;->a()Lcom/a/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/a/k;->a(Landroid/content/Context;)V

    const-string v0, "secret"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/a/k;->a([C)V

    .line 147
    sget-object v0, Lcom/a/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/b/c;->a(Landroid/content/Context;)Lcom/a/b/c;

    move-result-object v0

    sput-object v0, Lcom/a/a;->k:Lcom/a/b/c;

    .line 148
    new-instance v0, Lcom/a/a/g;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    sget v2, Lcom/a/a;->j:I

    invoke-direct {v0, v1, v2, p1}, Lcom/a/a/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    .line 149
    new-instance v0, Lcom/a/c;

    iget-object v1, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-virtual {v1}, Lcom/a/a/g;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/a/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/a/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    .line 151
    invoke-direct {p0}, Lcom/a/a;->f()V

    .line 152
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/a/b;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/a/a;->a:Lcom/a/b;

    if-nez v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/a/b;->a(Landroid/content/Context;)Lcom/a/b;

    move-result-object v0

    sput-object v0, Lcom/a/a;->a:Lcom/a/b;

    .line 103
    :cond_0
    sget-object v0, Lcom/a/a;->a:Lcom/a/b;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 115
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/a/a;->e:I

    .line 120
    :goto_0
    invoke-static {}, Lcom/a/a;->b()I

    move-result v0

    invoke-static {}, Lcom/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/a/a;->c:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/track/1/logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a;->f:Ljava/lang/String;

    .line 121
    :goto_1
    return-void

    .line 118
    :cond_1
    sput p0, Lcom/a/a;->e:I

    goto :goto_0

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/a/a;->d:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/track/1/logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/a/a;->i:Landroid/content/Context;

    .line 77
    sput p1, Lcom/a/a;->j:I

    .line 78
    sget-object v0, Lcom/a/a;->g:Lcom/a/a;

    if-nez v0, :cond_2

    .line 79
    const-class v1, Lcom/a/a;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/a/a;->g:Lcom/a/a;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/a/a;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a;->g:Lcom/a/a;

    .line 84
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/a/b;)V
    .locals 2

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    sput-object p0, Lcom/a/a;->a:Lcom/a/b;

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 243
    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p0}, Lcom/a/b/d;->a(Z)V

    .line 90
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/a/a;->b:Z

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/a/a;->e:I

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 251
    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 107
    sput-boolean p0, Lcom/a/a;->b:Z

    .line 108
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/a/a;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/a/a;->g:Lcom/a/a;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call init() method first ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Lcom/a/a;->g:Lcom/a/a;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/a/a;->l:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->c()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a;->l:Z

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/a/a;->k:Lcom/a/b/c;

    invoke-virtual {v1, p1}, Lcom/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a;->b(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 239
    const-string v5, "custom"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 333
    const-string v0, "BelugaBoostAnalytics"

    const-string v1, "onCreate ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sending system events for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "__##BELUGA##__"

    const-string v2, "__##ACTIVATE##__"

    const-string v3, "ACTIVATE"

    const-string v5, "system"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->b(Landroid/content/Context;)Z

    :cond_0
    sget-object v0, Lcom/a/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/c;->g(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/c;->b(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    if-le v6, v0, :cond_1

    const-string v1, "__##BELUGA##__"

    const-string v2, "__##UPDATE##__"

    const-string v3, "UPDATE"

    const-string v5, "system"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/a/c;->a(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->d(Landroid/content/Context;)J

    move-result-wide v0

    sget-object v2, Lcom/a/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v1, "__##BELUGA##__"

    const-string v2, "__##LAUNCH##__"

    const-string v3, "LAUNCH"

    const-string v5, "system"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "__##BELUGA##__"

    const-string v2, "__##ACTIVE##__"

    const-string v3, "ACTIVE"

    const-string v5, "system"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_3
    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    .line 335
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 218
    const-string v1, "__##BELUGA##__"

    const-string v2, "__##ERROR##__"

    sget-object v0, Lcom/a/a;->k:Lcom/a/b/c;

    invoke-virtual {v0, p1}, Lcom/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "system"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 338
    const-string v0, "BelugaBoostAnalytics"

    const-string v1, "onResume ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/a/a;->f()V

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->o:J

    .line 343
    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/a/a;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-wide v0, p0, Lcom/a/a;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->d(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->p:J

    .line 348
    :cond_0
    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last pause time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/a/a;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-wide v0, p0, Lcom/a/a;->p:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 351
    iget-wide v0, p0, Lcom/a/a;->o:J

    iget-wide v2, p0, Lcom/a/a;->p:J

    sub-long/2addr v0, v2

    .line 352
    const-string v2, "BelugaBoostAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gap time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->e(Landroid/content/Context;)J

    move-result-wide v4

    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duration = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/c;->d(Landroid/content/Context;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    const-string v1, "__##BELUGA##__"

    const-string v2, "__##DURATION##__"

    sget-object v3, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "system"

    invoke-virtual/range {v0 .. v7}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    sget-object v1, Lcom/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v8, v9}, Lcom/a/c;->b(Landroid/content/Context;J)Z

    .line 358
    :cond_1
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 361
    const-string v0, "BelugaBoostAnalytics"

    const-string v1, "onPause ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/a/a;->e()V

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->p:J

    .line 368
    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/a/a;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/a/a;->n:Lcom/a/c;

    iget-wide v1, p0, Lcom/a/a;->p:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/a/c;->a(Landroid/content/Context;J)Z

    .line 371
    iget-wide v0, p0, Lcom/a/a;->o:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 372
    const-string v0, "resume time == 0 !!! onResume() is not called before onPause()"

    invoke-static {v0}, Lcom/a/b/d;->a(Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v0, "BelugaBoostAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/a/a;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-wide v0, p0, Lcom/a/a;->p:J

    iget-wide v2, p0, Lcom/a/a;->o:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 379
    const-string v2, "BelugaBoostAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/a/a;->n:Lcom/a/c;

    invoke-virtual {v2, p1}, Lcom/a/c;->e(Landroid/content/Context;)J

    move-result-wide v2

    .line 382
    iget-object v4, p0, Lcom/a/a;->n:Lcom/a/c;

    add-long/2addr v0, v2

    invoke-virtual {v4, p1, v0, v1}, Lcom/a/c;->b(Landroid/content/Context;J)Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/a/a;->l:Z

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/a/a;->m:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->d()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string v1, "BelugaBoostAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
