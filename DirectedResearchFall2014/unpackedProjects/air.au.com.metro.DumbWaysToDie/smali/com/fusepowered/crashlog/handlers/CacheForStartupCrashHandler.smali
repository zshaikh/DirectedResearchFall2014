.class public Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;
.super Ljava/lang/Object;
.source "CacheForStartupCrashHandler.java"

# interfaces
.implements Lcom/fusepowered/crashlog/handlers/CrashHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheForStartupCrashHandler"


# instance fields
.field private final mCacheDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-static {p1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;-><init>(Ljava/io/File;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "cacheDirectory"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->mCacheDirectory:Ljava/io/File;

    .line 54
    return-void
.end method

.method public static clearCachedCrashes(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->clearCachedCrashes(Ljava/io/File;Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method private static clearCachedCrashes(Ljava/io/File;Landroid/content/Context;)V
    .locals 9
    .parameter "cacheDirectory"
    .parameter "context"

    .prologue
    const-string v8, "CacheForStartupCrashHandler"

    .line 147
    invoke-static {p1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getCachedCrashFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 149
    .local v2, crashFiles:[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_2

    .line 150
    :cond_0
    const-string v6, "CacheForStartupCrashHandler"

    const-string v6, "No cached crash logs found to clear"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    return-void

    .line 154
    :cond_2
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 156
    .local v1, crashFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 157
    .local v3, deleted:Z
    if-eqz v3, :cond_3

    .line 158
    const-string v6, "CacheForStartupCrashHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted crash log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_3
    const-string v6, "CacheForStartupCrashHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete crash log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "crashId"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FuseCrash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedCrashFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 2
    .parameter "directory"

    .prologue
    .line 215
    const-string v1, "FuseCrash-[\\w\\d-]*.json"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 217
    .local v0, pattern:Ljava/util/regex/Pattern;
    new-instance v1, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler$1;

    invoke-direct {v1, v0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getCachedCrashes(Landroid/content/Context;)[Lcom/fusepowered/crashlog/CrashData;
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getCachedCrashes(Ljava/io/File;Landroid/content/Context;)[Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedCrashes(Ljava/io/File;Landroid/content/Context;)[Lcom/fusepowered/crashlog/CrashData;
    .locals 9
    .parameter "cacheDirectory"
    .parameter "context"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getCachedCrashFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    .line 114
    .local v5, files:[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v1, cachedCrashes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/crashlog/CrashData;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v0, v6

    .line 116
    .local v4, crashFile:Ljava/io/File;
    invoke-static {v4, p1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->readCrashDataFromFile(Ljava/io/File;Landroid/content/Context;)Lcom/fusepowered/crashlog/CrashData;

    move-result-object v2

    .line 117
    .local v2, crashData:Lcom/fusepowered/crashlog/CrashData;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v2           #crashData:Lcom/fusepowered/crashlog/CrashData;
    .end local v4           #crashFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 124
    const/4 v8, 0x0

    .line 129
    .end local p0
    :goto_1
    return-object v8

    .line 127
    .restart local p0
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Lcom/fusepowered/crashlog/CrashData;

    .line 129
    .local v3, crashDataArray:[Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/fusepowered/crashlog/CrashData;

    move-object v8, p0

    goto :goto_1
.end method

.method public static getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CacheForStartupCrashHandler"

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "FuseCrashLog"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v0, defaultCacheDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const-string v1, "CacheForStartupCrashHandler"

    const-string v1, "Default cache directory does not exist and could not be created"

    invoke-static {v4, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 40
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v1, "CacheForStartupCrashHandler"

    const-string v1, "Default cache directory path exists but is a file."

    invoke-static {v4, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 37
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 40
    goto :goto_0
.end method

.method private static readCrashDataFromFile(Ljava/io/File;Landroid/content/Context;)Lcom/fusepowered/crashlog/CrashData;
    .locals 10
    .parameter "crashFile"
    .parameter "context"

    .prologue
    const-string v9, "CacheForStartupCrashHandler"

    .line 177
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, stringBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #stringBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 199
    .local v2, e:Ljava/io/IOException;
    const-string v6, "CacheForStartupCrashHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred trying to read cached crash data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v6, 0x0

    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 185
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, crashJson:Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/crashlog/CrashData;->fromJson(Ljava/lang/String;)Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    .line 190
    .local v0, crashData:Lcom/fusepowered/crashlog/CrashData;
    if-nez v0, :cond_1

    .line 191
    const-string v6, "CacheForStartupCrashHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse crash log: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v6, v0

    .line 196
    goto :goto_1

    .line 193
    :cond_1
    const-string v6, "CacheForStartupCrashHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read cached cache data from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public handleCrash(Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;)Z
    .locals 9
    .parameter "crashData"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const-string v7, "CacheForStartupCrashHandler"

    .line 66
    const-string v5, "CacheForStartupCrashHandler"

    const-string v5, "Received crash to handle."

    invoke-static {v7, v5}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/fusepowered/crashlog/CrashData;->getCrashId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->createFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->mCacheDirectory:Ljava/io/File;

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v0, crashFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    const-string v5, "CacheForStartupCrashHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t cache crash, file already exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 90
    :goto_0
    return v5

    .line 78
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    .local v4, writer:Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Lcom/fusepowered/crashlog/CrashData;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, crashJson:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const-string v5, "CacheForStartupCrashHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cached crash to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v5, 0x1

    goto :goto_0

    .line 84
    .end local v1           #crashJson:Ljava/lang/String;
    .end local v4           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 85
    .local v2, e:Ljava/io/IOException;
    const-string v5, "CacheForStartupCrashHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred trying to cache the crash data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 86
    goto :goto_0
.end method
