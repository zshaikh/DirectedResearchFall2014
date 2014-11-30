.class Lmobi/mgeek/util/CrashReporter/s;
.super Lcom/dolphin/browser/util/f;
.source "DolphinWebkitBugReporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field final synthetic c:Lmobi/mgeek/util/CrashReporter/o;


# direct methods
.method public constructor <init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/s;->c:Lmobi/mgeek/util/CrashReporter/o;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 115
    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/s;->a:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lmobi/mgeek/util/CrashReporter/s;->b:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 121
    .line 124
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 125
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/InputStream;)Ljava/io/InputStreamReader;

    move-result-object v0

    const/16 v4, 0x1000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/s;->b:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lmobi/mgeek/util/CrashReporter/s;->c:Lmobi/mgeek/util/CrashReporter/o;

    invoke-static {v2}, Lmobi/mgeek/util/CrashReporter/o;->a(Lmobi/mgeek/util/CrashReporter/o;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lrt"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 130
    iget-object v2, p0, Lmobi/mgeek/util/CrashReporter/s;->c:Lmobi/mgeek/util/CrashReporter/o;

    invoke-static {v2}, Lmobi/mgeek/util/CrashReporter/o;->b(Lmobi/mgeek/util/CrashReporter/o;)Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/util/CrashReporter/d;->c()J

    move-result-wide v6

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/s;->f()Z

    move-result v8

    if-nez v8, :cond_2

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 134
    const/16 v9, 0x20

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 135
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v8, p0, Lmobi/mgeek/util/CrashReporter/s;->c:Lmobi/mgeek/util/CrashReporter/o;

    invoke-static {v8}, Lmobi/mgeek/util/CrashReporter/o;->c(Lmobi/mgeek/util/CrashReporter/o;)Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 138
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getYear()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/util/Date;->setYear(I)V

    .line 139
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 140
    cmp-long v2, v8, v4

    if-lez v2, :cond_0

    cmp-long v2, v8, v6

    if-lez v2, :cond_0

    .line 142
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/s;->c:Lmobi/mgeek/util/CrashReporter/o;

    invoke-static {v0, v8, v9}, Lmobi/mgeek/util/CrashReporter/o;->a(Lmobi/mgeek/util/CrashReporter/o;J)V

    .line 143
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 151
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 152
    if-eqz v3, :cond_1

    .line 154
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    :cond_1
    :goto_0
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    .line 160
    :goto_1
    return-object v0

    .line 151
    :cond_2
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 152
    if-eqz v3, :cond_3

    .line 154
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    :cond_3
    :goto_2
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    .line 160
    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 149
    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 151
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 152
    if-eqz v2, :cond_4

    .line 154
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 158
    :cond_4
    :goto_5
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    goto :goto_3

    .line 151
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 152
    if-eqz v3, :cond_5

    .line 154
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 158
    :cond_5
    :goto_7
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    throw v0

    .line 155
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_7

    .line 151
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 148
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_4
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/s;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
