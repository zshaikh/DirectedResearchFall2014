.class public final Lcom/dolphin/browser/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final ALL:I = -0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ASSERT:I = 0x7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEBUG:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ERROR:I = 0x6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final INFO:I = 0x4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final NONE:I = 0x7fffffff
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final VERBOSE:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final WARN:I = 0x5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static sApplicationTag:Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation
.end field

.field private static sFilterLevel:I
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/Log;->a:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x5

    sput v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 409
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 528
    sget-boolean v0, Lcom/dolphin/browser/util/Log;->c:Z

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/dolphin/browser/util/Log;->c:Z

    .line 533
    const-string v0, "dolphin.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/Log;->b:Ljava/lang/Class;

    .line 534
    sget-object v0, Lcom/dolphin/browser/util/Log;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/dolphin/browser/util/Log;->b:Ljava/lang/Class;

    const-string v1, "setApplicationTag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/Log;->d:Ljava/lang/reflect/Method;

    .line 536
    sget-object v0, Lcom/dolphin/browser/util/Log;->b:Ljava/lang/Class;

    const-string v1, "setFilterLevel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/Log;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0

    .line 540
    :catch_1
    move-exception v0

    .line 542
    sput-boolean v5, Lcom/dolphin/browser/util/Log;->c:Z

    goto :goto_0

    .line 543
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static final a(I)V
    .locals 5

    .prologue
    .line 561
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/util/Log;->a()V

    .line 562
    sget-object v0, Lcom/dolphin/browser/util/Log;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 563
    sget-object v0, Lcom/dolphin/browser/util/Log;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 550
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/util/Log;->a()V

    .line 551
    sget-object v0, Lcom/dolphin/browser/util/Log;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/dolphin/browser/util/Log;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 226
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v1, p0, v0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 470
    return v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 396
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v1, p0, v0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 456
    return v0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getApplicationTag()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getFilterLevel()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 137
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    const-string v0, ""

    .line 486
    :goto_0
    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 484
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 485
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 486
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 277
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    .line 279
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v1, p0, v0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 367
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 500
    if-nez p2, :cond_0

    const-string p2, ""

    .line 503
    :cond_0
    sget v1, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-lt p0, v1, :cond_2

    .line 504
    sget-object v1, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 505
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 513
    :cond_2
    :goto_0
    return v0

    .line 506
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 507
    sget-object v0, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 509
    :cond_4
    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 510
    sget-object v1, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setApplicationTag(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 101
    sput-object p0, Lcom/dolphin/browser/util/Log;->sApplicationTag:Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static setFilterLevel(I)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lcom/dolphin/browser/util/Log;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    sput p0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->a(I)V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 175
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v1, p0, v0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 328
    sget v0, Lcom/dolphin/browser/util/Log;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/Log;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v1, p0, v0}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x5

    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
