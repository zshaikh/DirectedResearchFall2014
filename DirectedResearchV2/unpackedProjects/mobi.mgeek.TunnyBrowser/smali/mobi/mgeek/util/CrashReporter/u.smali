.class Lmobi/mgeek/util/CrashReporter/u;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# static fields
.field private static a:Lmobi/mgeek/util/CrashReporter/u;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lmobi/mgeek/util/CrashReporter/d;

.field private d:Lmobi/mgeek/util/CrashReporter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lmobi/mgeek/util/CrashReporter/u;

    invoke-direct {v0}, Lmobi/mgeek/util/CrashReporter/u;-><init>()V

    sput-object v0, Lmobi/mgeek/util/CrashReporter/u;->a:Lmobi/mgeek/util/CrashReporter/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->b()Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    .line 36
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->a()Lmobi/mgeek/util/CrashReporter/c;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    .line 37
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static a(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "Device info"

    invoke-static {p0, v0}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lmobi/mgeek/util/CrashReporter/u;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lmobi/mgeek/util/CrashReporter/u;->a:Lmobi/mgeek/util/CrashReporter/u;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-static {p1, p2}, Lmobi/mgeek/util/CrashReporter/ac;->a(Landroid/content/Context;Ljava/util/Properties;)Ljava/util/Properties;

    .line 60
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0, p2}, Lmobi/mgeek/util/CrashReporter/d;->a(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "ErrorReporter"

    const-string v2, "Error while retrieving crash data"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lmobi/mgeek/util/CrashReporter/v;

    invoke-direct {v2, p1, p0, v1}, Lmobi/mgeek/util/CrashReporter/v;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    :goto_1
    :try_start_4
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    .line 173
    const-string v0, "ErrorReporter"

    const-string v1, "saveLogToFile finished."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    :goto_2
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "ErrorReporter"

    const-string v2, "saveLogToFile failed"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 165
    :catch_1
    move-exception v2

    goto :goto_0

    .line 170
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    const-string v1, "crash.txt"

    invoke-interface {v0, v1}, Lmobi/mgeek/util/CrashReporter/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "ErrorReporter"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const-string v0, "ErrorReporter"

    const-string v2, "delete file failed"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 238
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 239
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/u;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lmobi/mgeek/util/CrashReporter/u;->a(Landroid/content/Context;Ljava/util/Properties;)V

    .line 240
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v1, v0}, Lmobi/mgeek/util/CrashReporter/d;->b(Ljava/util/Properties;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 183
    const-string v0, "logcat"

    invoke-static {v0}, Lcom/dolphin/browser/util/cc;->a(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    const-string v1, "report.zip"

    invoke-interface {v0, v1}, Lmobi/mgeek/util/CrashReporter/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 188
    invoke-direct {p0, p1}, Lmobi/mgeek/util/CrashReporter/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "crash.txt"

    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v0}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/dolphin/browser/util/dw;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/util/ArrayList;)V

    .line 193
    return-object v1
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    invoke-interface {v0, p1}, Lmobi/mgeek/util/CrashReporter/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/String;Z)V

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_0
    return-object v1
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lmobi/mgeek/util/CrashReporter/w;

    invoke-direct {v0}, Lmobi/mgeek/util/CrashReporter/w;-><init>()V

    .line 258
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    invoke-interface {v1}, Lmobi/mgeek/util/CrashReporter/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lmobi/mgeek/util/CrashReporter/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lmobi/mgeek/util/CrashReporter/w;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/util/CrashReporter/d;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p0, p2}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "ErrorReporter"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 79
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "AndroidRuntime"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/u;->b:Landroid/content/Context;

    iget-object v2, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    invoke-interface {v2}, Lmobi/mgeek/util/CrashReporter/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->c:Lmobi/mgeek/util/CrashReporter/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/d;->a(J)V

    .line 101
    return-void
.end method

.method public c()Ljava/io/File;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/u;->d:Lmobi/mgeek/util/CrashReporter/c;

    const-string v1, "report.zip"

    invoke-interface {v0, v1}, Lmobi/mgeek/util/CrashReporter/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
