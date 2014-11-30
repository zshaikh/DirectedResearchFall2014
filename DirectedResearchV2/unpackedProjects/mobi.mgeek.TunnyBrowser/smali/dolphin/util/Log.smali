.class public final Ldolphin/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ALL:I = -0x1

.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final MESSAGE_TEMPLATE:Ljava/lang/String; = "[%s]%s"

.field public static final NONE:I = 0x7fffffff

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sApplicationTag:Ljava/lang/String;

.field private static sFilterLevel:I

.field private static sSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldolphin/util/Log;->sSyncObject:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x5

    sput v0, Ldolphin/util/Log;->sFilterLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 214
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v1, p0, v0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 397
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 441
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 442
    return v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 372
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    .line 374
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v1, p0, v0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    .prologue
    .line 428
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 429
    return v0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 406
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 385
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApplicationTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getFilterLevel()I
    .locals 1

    .prologue
    .line 132
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    const-string v0, ""

    .line 457
    :goto_0
    return-object v0

    .line 454
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 455
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 456
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 457
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 276
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 261
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v1, p0, v0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 345
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static myAssert(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 490
    :cond_0
    return-void
.end method

.method public static native nativeSetApplicationTag(Ljava/lang/String;)V
.end method

.method public static native nativeSetFilterLevel(I)V
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    if-nez p2, :cond_0

    const-string p2, ""

    .line 473
    :cond_0
    sget v1, Ldolphin/util/Log;->sFilterLevel:I

    if-lt p0, v1, :cond_2

    .line 474
    sget-object v1, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 483
    :cond_2
    :goto_0
    return v0

    .line 476
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 477
    sget-object v0, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 479
    :cond_4
    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 480
    sget-object v1, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setApplicationTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    sput-object p0, Ldolphin/util/Log;->sApplicationTag:Ljava/lang/String;

    .line 91
    :try_start_0
    invoke-static {p0}, Ldolphin/util/Log;->nativeSetApplicationTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setFilterLevel(I)V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Ldolphin/util/Log;->sSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sput p0, Ldolphin/util/Log;->sFilterLevel:I

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    const-string v0, "DOLPHIN_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log level set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0}, Ldolphin/util/Log;->nativeSetFilterLevel(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 167
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v1, p0, v0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 308
    sget v0, Ldolphin/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v1, p0, v0}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x5

    invoke-static {p1}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldolphin/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
