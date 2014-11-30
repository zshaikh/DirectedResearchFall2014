.class public Lorg/c/a/d/d;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:J


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/SimpleDateFormat;

.field private f:Ljava/lang/String;

.field private g:Ljava/text/SimpleDateFormat;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Locale;

.field private p:Ljava/text/DateFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sput-object v0, Lorg/c/a/d/d;->a:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0xe10

    sput-wide v0, Lorg/c/a/d/d;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lorg/c/a/d/d;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/c/a/d/d;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/c/a/d/d;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v2, p0, Lorg/c/a/d/d;->k:J

    .line 63
    iput-wide v2, p0, Lorg/c/a/d/d;->l:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/d;->m:I

    .line 65
    iput-object v1, p0, Lorg/c/a/d/d;->n:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    .line 68
    iput-object v1, p0, Lorg/c/a/d/d;->p:Ljava/text/DateFormatSymbols;

    .line 87
    iput-object p1, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/d;->a(Ljava/util/TimeZone;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v2, p0, Lorg/c/a/d/d;->k:J

    .line 63
    iput-wide v2, p0, Lorg/c/a/d/d;->l:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/d;->m:I

    .line 65
    iput-object v1, p0, Lorg/c/a/d/d;->n:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    .line 68
    iput-object v1, p0, Lorg/c/a/d/d;->p:Ljava/text/DateFormatSymbols;

    .line 95
    iput-object p1, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    .line 97
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/d;->a(Ljava/util/TimeZone;)V

    .line 98
    return-void
.end method

.method private declared-synchronized b(Ljava/util/TimeZone;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    const-string v1, "ZZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 156
    if-ltz v0, :cond_3

    .line 158
    iget-object v1, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    if-ltz v0, :cond_2

    .line 166
    const/16 v1, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :goto_0
    const v1, 0xea60

    div-int/2addr v0, v1

    .line 174
    div-int/lit8 v1, v0, 0x3c

    .line 175
    rem-int/lit8 v0, v0, 0x3c

    .line 177
    if-ge v1, v5, :cond_0

    .line 178
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    if-ge v0, v5, :cond_1

    .line 181
    const/16 v1, 0x30

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const/16 v0, 0x27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    .line 190
    :goto_1
    invoke-direct {p0}, Lorg/c/a/d/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 169
    :cond_2
    neg-int v0, v0

    .line 170
    const/16 v1, 0x2d

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/c/a/d/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    const-string v1, "ss.SSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 199
    if-ltz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ms not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 202
    const/4 v1, 0x2

    .line 205
    iget-object v2, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'ss\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d;->f:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 227
    monitor-enter p0

    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    .line 230
    iget-wide v2, p0, Lorg/c/a/d/d;->l:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/c/a/d/d;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lorg/c/a/d/d;->l:J

    sget-wide v4, Lorg/c/a/d/d;->b:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 235
    iget-object v1, p0, Lorg/c/a/d/d;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 271
    :goto_0
    monitor-exit p0

    return-object v0

    .line 241
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lorg/c/a/d/d;->l:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 242
    iget-object v0, p0, Lorg/c/a/d/d;->n:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 247
    const-wide/16 v3, 0x3c

    div-long v3, v0, v3

    .line 248
    iget-wide v5, p0, Lorg/c/a/d/d;->k:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_3

    .line 250
    iput-wide v3, p0, Lorg/c/a/d/d;->k:J

    .line 251
    iget-object v3, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/c/a/d/d;->h:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lorg/c/a/d/d;->h:Ljava/lang/String;

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 254
    const/4 v3, 0x2

    .line 255
    iget-object v4, p0, Lorg/c/a/d/d;->h:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/c/a/d/d;->i:Ljava/lang/String;

    .line 256
    iget-object v4, p0, Lorg/c/a/d/d;->h:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/c/a/d/d;->j:Ljava/lang/String;

    .line 260
    :cond_3
    iput-wide v0, p0, Lorg/c/a/d/d;->l:J

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/c/a/d/d;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    iget-object v3, p0, Lorg/c/a/d/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-wide/16 v3, 0x3c

    rem-long/2addr v0, v3

    long-to-int v0, v0

    .line 264
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 265
    const/16 v1, 0x30

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    iget-object v0, p0, Lorg/c/a/d/d;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d;->n:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lorg/c/a/d/d;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/TimeZone;)V
    .locals 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/c/a/d/d;->b(Ljava/util/TimeZone;)V

    .line 115
    iget-object v0, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/c/a/d/d;->e:Ljava/text/SimpleDateFormat;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/d/d;->o:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;

    .line 130
    :goto_0
    iget-object v0, p0, Lorg/c/a/d/d;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 131
    iget-object v0, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/c/a/d/d;->l:J

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/c/a/d/d;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d;->p:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/d/d;->p:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/c/a/d/d;->e:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/d/d;->p:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_1
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/c/a/d/d;->e:Ljava/text/SimpleDateFormat;

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/c/a/d/d;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/c/a/d/d;->g:Ljava/text/SimpleDateFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/c/a/d/d;->m:I

    .line 303
    invoke-virtual {p0, v0, v1}, Lorg/c/a/d/d;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/c/a/d/d;->m:I

    return v0
.end method
