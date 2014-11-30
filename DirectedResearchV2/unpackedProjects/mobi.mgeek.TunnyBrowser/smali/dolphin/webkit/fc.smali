.class final Ldolphin/webkit/fc;
.super Ljava/lang/Object;
.source "PNRReportGenerator.java"

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
    .line 158
    iput-boolean p1, p0, Ldolphin/webkit/fc;->a:Z

    iput-object p2, p0, Ldolphin/webkit/fc;->b:Ljava/lang/String;

    iput-object p3, p0, Ldolphin/webkit/fc;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/fc;->a:Z

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldolphin/webkit/fc;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string v1, "PNRReportGenerator"

    const-string v2, "delete file failed"

    invoke-static {v1, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string v0, "PNRReportGenerator"

    const-string v1, "create new file failed"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    invoke-static {}, Ldolphin/webkit/fb;->c()V

    .line 173
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -d -v threadtime -f %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ldolphin/webkit/fc;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 176
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/fc;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/fc;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "PNRReportGenerator"

    const-string v2, "saveLogToFile failed"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
