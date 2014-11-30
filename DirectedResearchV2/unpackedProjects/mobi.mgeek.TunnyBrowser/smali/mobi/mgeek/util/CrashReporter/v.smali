.class final Lmobi/mgeek/util/CrashReporter/v;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lmobi/mgeek/util/CrashReporter/v;->a:Z

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lmobi/mgeek/util/CrashReporter/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    :try_start_0
    iget-boolean v0, p0, Lmobi/mgeek/util/CrashReporter/v;->a:Z

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/v;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "ErrorReporter"

    const-string v2, "delete file failed"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const-string v0, "ErrorReporter"

    const-string v1, "create new file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    .line 149
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -d -v time -f %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/mgeek/util/CrashReporter/v;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 152
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/v;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_1
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/v;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 158
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "ErrorReporter"

    const-string v2, "saveLogToFile failed"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
