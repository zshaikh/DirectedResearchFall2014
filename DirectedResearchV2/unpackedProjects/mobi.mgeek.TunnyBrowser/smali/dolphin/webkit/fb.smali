.class Ldolphin/webkit/fb;
.super Ljava/lang/Object;
.source "PNRReportGenerator.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "/sdcard"

    iput-object v0, p0, Ldolphin/webkit/fb;->b:Ljava/lang/String;

    .line 25
    const-string v0, "minidump.dmp"

    iput-object v0, p0, Ldolphin/webkit/fb;->c:Ljava/lang/String;

    .line 26
    const-string v0, "cachelog.log"

    iput-object v0, p0, Ldolphin/webkit/fb;->d:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Ldolphin/webkit/fb;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 205
    .line 208
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 212
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 215
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 216
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 222
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_0
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 227
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 230
    :cond_2
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v0, "PNRReportGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed dump CLog to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    :goto_2
    return-void

    .line 221
    :cond_4
    if-eqz v3, :cond_5

    .line 222
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_5
    if-eqz v1, :cond_6

    .line 224
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 227
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 235
    :catch_1
    move-exception v0

    .line 236
    const-string v1, "PNRReportGenerator"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 221
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ldolphin/webkit/fc;

    invoke-direct {v2, p1, p0, v1}, Ldolphin/webkit/fc;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 196
    :goto_1
    :try_start_4
    invoke-static {}, Ldolphin/webkit/fb;->c()V

    .line 197
    const-string v0, "PNRReportGenerator"

    const-string v1, "saveLogToFile finished."

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 201
    :goto_2
    return-void

    .line 191
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

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "PNRReportGenerator"

    const-string v2, "saveLogToFile failed"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 189
    :catch_1
    move-exception v2

    goto :goto_0

    .line 194
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "Device info"

    invoke-static {p0, v0}, Ldolphin/webkit/fn;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    const-string v0, ""

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/fb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Ldolphin/webkit/fb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldolphin/webkit/fb;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 116
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 117
    iget-object v1, p0, Ldolphin/webkit/fb;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ldolphin/webkit/fn;->a(Landroid/content/Context;Ljava/util/Properties;)Ljava/util/Properties;

    .line 118
    invoke-virtual {p0, v0}, Ldolphin/webkit/fb;->a(Ljava/util/Properties;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-static {v0}, Ldolphin/webkit/fb;->b(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldolphin/webkit/fb;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    const-string v0, "PNRReportGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/fb;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
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
    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 99
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 98
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 135
    const-string v0, "libdolphinwebcore.so_symbol_name"

    sget v1, Ldolphin/webkit/R$string;->libdolphinwebcore_symbol_name:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "libdolphinwebcore.libraryVersion"

    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ldolphin/webkit/R$integer;->library_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "BrowserShellVercode"

    invoke-direct {p0}, Ldolphin/webkit/fb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "pnr.zip"

    invoke-direct {p0, v0}, Ldolphin/webkit/fb;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/fb;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/fb;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 68
    const-string v0, "pnr.zip"

    invoke-direct {p0, v0}, Ldolphin/webkit/fb;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-string v2, "crash.txt"

    invoke-direct {p0, v2}, Ldolphin/webkit/fb;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 73
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ldolphin/webkit/fb;->a(Ljava/lang/String;Z)V

    .line 74
    iget-object v3, p0, Ldolphin/webkit/fb;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldolphin/webkit/fb;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3, v2}, Ldolphin/webkit/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Ldolphin/webkit/fb;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Ldolphin/webkit/fb;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/fb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Ldolphin/util/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p0, v1}, Ldolphin/webkit/fb;->a(Ljava/util/ArrayList;)V

    .line 94
    return-object v0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    const-string v2, "PNRReportGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zip file failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method
