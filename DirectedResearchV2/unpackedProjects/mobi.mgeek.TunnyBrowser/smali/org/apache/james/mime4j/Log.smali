.class public Lorg/apache/james/mime4j/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Mime4j"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    if-nez p0, :cond_0

    const-string v0, "(null)"

    .line 109
    :goto_0
    if-nez p1, :cond_1

    .line 112
    :goto_1
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 92
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/browser/util/Log;->getFilterLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/util/Log;->getFilterLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/dolphin/browser/util/Log;->getFilterLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 84
    const-string v0, "Mime4j"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 88
    const-string v0, "Mime4j"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
