.class public Lcom/facebook/orca/debug/OrcaLogImpl;
.super Ljava/lang/Object;
.source "OrcaLogImpl.java"

# interfaces
.implements Lcom/facebook/orca/debug/OrcaLog;


# static fields
.field private static final f:Ljava/text/SimpleDateFormat;

.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/Writer;

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "[HH:mm:ss.SSS]: "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/debug/OrcaLogImpl;->f:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/debug/OrcaLogImpl;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 144
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 6

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->c()V

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 162
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    iget-wide v2, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->c:J

    .line 168
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->b()Ljava/io/File;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 172
    new-instance v3, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 174
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/orca.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/orca/debug/OrcaLogImpl;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 176
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    .line 177
    iput-wide v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:J

    .line 178
    const/4 v0, 0x4

    const-string v1, "OrcaLog"

    const-string v2, "Opened log."

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Ljava/io/File;
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/io/File;

    const-string v2, "/Android/data/com.facebook.orca/files/log/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    iget-wide v2, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 255
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    .line 257
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 254
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 255
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 255
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    throw v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/facebook/orca/debug/OrcaLogImpl;->g:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->a()V

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/orca/debug/OrcaLogImpl;->f:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Ljava/io/File;

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x5

    invoke-static {p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/facebook/orca/debug/OrcaLogImpl$TerribleFailure;

    invoke-direct {v0, p2, p3}, Lcom/facebook/orca/debug/OrcaLogImpl$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v1, 0x7

    invoke-static {v0}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
