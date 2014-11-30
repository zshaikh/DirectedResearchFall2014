.class public Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;
.super Ljava/lang/Object;
.source "SimpleZipUtil.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/zip/ZipUtil;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final KIBI:I = 0x400

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentFilter:Ljava/io/FilenameFilter;

.field private hasFile:Z

.field private zipInputStream:Ljava/util/zip/ZipInputStream;

.field private zipOutputStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addWithFilter(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "inPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v5, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object v4, p2

    .line 77
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->currentFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 84
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1, v4}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->addWithFilter(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipFileToStream(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    .line 90
    :cond_2
    return-void
.end method

.method private getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;
    .locals 5
    .param p1, "zip"    # Ljava/util/zip/ZipInputStream;

    .prologue
    const/4 v4, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "efo":Ljava/io/EOFException;
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v3, "Ignoring EOFException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 178
    goto :goto_0

    .line 179
    .end local v1    # "efo":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v4

    .line 180
    goto :goto_0
.end method

.method private unzipFile(Ljava/io/File;)V
    .locals 6
    .param p1, "entryFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 186
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 188
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 190
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 198
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw v4

    .line 197
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "count":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 198
    if-eqz v3, :cond_2

    .line 199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 202
    :cond_2
    return-void

    .line 197
    .end local v1    # "count":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private zipFileToStream(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 98
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 99
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 100
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 103
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_2

    .line 104
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v5

    move-object v1, v2

    .line 108
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 109
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    :cond_0
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_1

    .line 113
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_1
    throw v5

    .line 108
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v2, :cond_3

    .line 109
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :cond_3
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v5, :cond_4

    .line 113
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 117
    :cond_4
    return-void

    .line 112
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_5

    .line 113
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_5
    throw v5

    .line 112
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_6

    .line 113
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_6
    throw v5

    .line 107
    :catchall_3
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public final unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "source cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    if-nez p2, :cond_1

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "destinationDir cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_1
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering unzip() with destination directory ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 147
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_4

    .line 149
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v1, "entryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_2
    throw v2

    .line 155
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "entryFile":Ljava/io/File;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0, v1}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->unzipFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    .end local v1    # "entryFile":Ljava/io/File;
    :cond_4
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 165
    :cond_5
    return-void
.end method

.method public final unzip([BLjava/io/File;)V
    .locals 2
    .param p1, "source"    # [B
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 128
    return-void
.end method

.method public final zipToByteArray(Ljava/io/File;Ljava/io/FilenameFilter;)[B
    .locals 10
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "baseDir cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "filter cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    .line 49
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->currentFilter:Ljava/io/FilenameFilter;

    .line 50
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 54
    .local v1, "child":Ljava/io/File;
    const-string v7, ""

    invoke-direct {p0, v1, v7}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->addWithFilter(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "child":Ljava/io/File;
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 60
    .local v2, "data":[B
    :try_start_0
    iget-object v7, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    iget-boolean v7, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    if-nez v7, :cond_3

    .line 67
    sget-object v7, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v8, "No files, cannot create zip file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 70
    :goto_1
    return-object v7

    .line 61
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 62
    .local v3, "e":Ljava/util/zip/ZipException;
    sget-object v7, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v8, "No files found.  Returning null"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 63
    goto :goto_1

    .end local v3    # "e":Ljava/util/zip/ZipException;
    :cond_3
    move-object v7, v2

    .line 70
    goto :goto_1
.end method
