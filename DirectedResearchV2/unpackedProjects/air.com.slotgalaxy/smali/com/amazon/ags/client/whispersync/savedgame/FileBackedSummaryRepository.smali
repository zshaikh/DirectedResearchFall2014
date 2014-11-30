.class public Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;
.super Ljava/lang/Object;
.source "FileBackedSummaryRepository.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;


# static fields
.field public static final AMAZON_GAMES_DIR_NAME:Ljava/lang/String; = ".amazonGamesService"

.field private static final PENDING_DOWNLOAD_DATA_FILE_NAME:Ljava/lang/String; = "pendingDownloadData.dat"

.field private static final PENDING_DOWNLOAD_SUMMARY_FILE_NAME:Ljava/lang/String; = "pendingDownloadSummary.dat"

.field private static final PENDING_UPLOAD_DATA_FILE_NAME:Ljava/lang/String; = "pendingUploadData.dat"

.field private static final PENDING_UPLOAD_DESCRIPTION_FILE_NAME:Ljava/lang/String; = "pendingUploadDescription.txt"

.field private static final SUMMARY_FILE_NAME:Ljava/lang/String; = "latestSummary.txt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AG_WS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marshaller"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .line 38
    return-void
.end method

.method private getAmazonGamesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, ".amazonGamesService"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    return-object v0
.end method

.method private lastModified(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 169
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFromAmazonGamesDir(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v2, "sourceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const/4 v3, 0x0

    .line 150
    :goto_0
    return-object v3

    .line 144
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v1, v3, [B

    .line 147
    .local v1, "gameData":[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    move-object v3, v1

    goto :goto_0

    .end local v1    # "gameData":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v3
.end method

.method private readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v4, "summaryFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "jsonSummary":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v5, v3}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 120
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 123
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "jsonSummary":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 120
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .end local v2    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 123
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V
    .locals 4
    .param p1, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v2, p1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->marshal(Lcom/amazon/ags/client/whispersync/GameSummary;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "jsonSummary":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->TAG:Ljava/lang/String;

    const-string v3, "Could not write game summary"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeToAmazonGamesDir(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v1, "targetFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method


# virtual methods
.method public final hasPendingDownload()Z
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadData.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final removePendingDownload()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadData.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadSummary.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    return-void
.end method

.method public final removePendingUpload()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pendingUploadData.dat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v0, "pendingGameDataFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pendingUploadDescription.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v1, "pendingGameDescription":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 81
    return-void
.end method

.method public final removeSummary()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "latestSummary.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v0, "summaryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 44
    return-void
.end method

.method public final retrievePendingDownload()Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v2, "pendingDownloadData.dat"

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "gameData":[B
    const-string v2, "pendingDownloadSummary.dat"

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v1

    .line 98
    .local v1, "summary":Lcom/amazon/ags/client/whispersync/GameSummary;
    if-nez v0, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;

    invoke-direct {v2, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;-><init>([BLcom/amazon/ags/client/whispersync/GameSummary;)V

    goto :goto_0
.end method

.method public final retrievePendingUpload()Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "pendingUploadData.dat"

    .line 68
    const-string v4, "pendingUploadData.dat"

    invoke-direct {p0, v5}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v2

    .line 69
    .local v2, "gameData":[B
    const-string v4, "pendingUploadDescription.txt"

    invoke-direct {p0, v4}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    .local v1, "descriptionBytes":[B
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 71
    .local v0, "description":Ljava/lang/String;
    :goto_0
    const-string v4, "pendingUploadData.dat"

    invoke-direct {p0, v5}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->lastModified(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 72
    .local v3, "saveDate":Ljava/util/Date;
    new-instance v4, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;

    invoke-direct {v4, v2, v0, v3}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;-><init>([BLjava/lang/String;Ljava/util/Date;)V

    return-object v4

    .line 70
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "saveDate":Ljava/util/Date;
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v4

    goto :goto_0
.end method

.method public final retrieveSummary()Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 1

    .prologue
    .line 48
    const-string v0, "latestSummary.txt"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    return-object v0
.end method

.method public final storePendingDownload(Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;)V
    .locals 2
    .param p1, "pendingDownload"    # Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "pendingDownloadData.dat"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 86
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getSummary()Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    const-string v1, "pendingDownloadSummary.dat"

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final storePendingUpload(Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;)V
    .locals 4
    .param p1, "pendingUpload"    # Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "pendingUploadDescription.txt"

    .line 58
    const-string v0, "pendingUploadData.dat"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 59
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingUploadDescription.txt"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "pendingUploadDescription.txt"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V
    .locals 1
    .param p1, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    .line 53
    const-string v0, "latestSummary.txt"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V

    .line 54
    return-void
.end method
