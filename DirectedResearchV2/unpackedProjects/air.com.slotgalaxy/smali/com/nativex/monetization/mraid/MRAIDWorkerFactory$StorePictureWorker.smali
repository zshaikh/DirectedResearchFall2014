.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
.super Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorePictureWorker"
.end annotation


# instance fields
.field private cancelled:Z

.field private confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

.field private onCloseListener:Landroid/view/View$OnClickListener;

.field private onProceedListener:Landroid/view/View$OnClickListener;

.field private pictureLocation:Ljava/lang/String;

.field private scaledForDialog:Landroid/graphics/Bitmap;

.field private url:Ljava/lang/String;

.field private userConfirmed:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 96
    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    .line 97
    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->cancelled:Z

    .line 99
    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onCloseListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onProceedListener:Landroid/view/View$OnClickListener;

    .line 134
    return-void
.end method

.method static synthetic access$002(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->copyFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onPictureDownloaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private copyFile()V
    .locals 13

    .prologue
    .line 203
    const/4 v8, 0x0

    .line 204
    .local v8, "stream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 206
    .local v3, "fOut":Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->url:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getPictureExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "extension":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {v10}, Lcom/nativex/common/Utilities;->getDateInFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "filename":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 210
    .local v7, "path":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 212
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x1

    .line 214
    .local v0, "count":I
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v5    # "file":Ljava/io/File;
    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 219
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 220
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v3    # "fOut":Ljava/io/OutputStream;
    .local v4, "fOut":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v4, v8}, Lcom/nativex/common/Utilities;->savePictureStreamToFile(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 222
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    new-instance v12, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$4;

    invoke-direct {v12, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$4;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V

    invoke-static {v9, v10, v11, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 232
    const-string v9, "Picture Stored"

    invoke-static {v9}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    if-eqz v4, :cond_1

    .line 241
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 246
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 248
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 253
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V

    move-object v3, v4

    .line 255
    .end local v0    # "count":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v4    # "fOut":Ljava/io/OutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "path":Ljava/io/File;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    :goto_3
    return-void

    .line 233
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v9, "Exception caught when storing picture"

    invoke-static {v9, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v9, v10, v1, v11}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    :cond_3
    if-eqz v3, :cond_4

    .line 241
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 246
    :cond_4
    :goto_5
    if-eqz v8, :cond_5

    .line 248
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 253
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V

    goto :goto_3

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_6

    .line 241
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 246
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    .line 248
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 253
    :cond_7
    :goto_9
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V

    throw v9

    .line 242
    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v0    # "count":I
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v4    # "fOut":Ljava/io/OutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v7    # "path":Ljava/io/File;
    :catch_1
    move-exception v9

    goto :goto_1

    .line 249
    :catch_2
    move-exception v9

    goto :goto_2

    .line 242
    .end local v0    # "count":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v4    # "fOut":Ljava/io/OutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "path":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    goto :goto_5

    .line 249
    :catch_4
    move-exception v9

    goto :goto_6

    .line 242
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    goto :goto_8

    .line 249
    :catch_6
    move-exception v10

    goto :goto_9

    .line 239
    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v0    # "count":I
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v4    # "fOut":Ljava/io/OutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v7    # "path":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/OutputStream;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    goto :goto_7

    .line 233
    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v4    # "fOut":Ljava/io/OutputStream;
    :catch_7
    move-exception v9

    move-object v1, v9

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/OutputStream;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private deleteFile()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 259
    return-void
.end method

.method private getPictureExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 274
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 275
    .local v0, "lastDotPosition":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private onPictureDownloaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "pictureLocation"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    .line 185
    iget-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->cancelled:Z

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    invoke-static {v1, p1, v2, v3}, Lcom/nativex/common/Utilities;->decodeSampledBitmapFromInternalMemory(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->setPictureToDialogMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ANTON"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->copyFile()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setPictureToDialogMainThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "pictureLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    .line 141
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->cancelled:Z

    .line 283
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->deleteFile()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->dismiss()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_2
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->dismissDialog()V

    .line 147
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->cancelled:Z

    if-nez v1, :cond_1

    .line 148
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    .line 149
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onProceedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->setImage(Landroid/graphics/Bitmap;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create confirmation dialog when storing picture"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->finishWorker()V

    goto :goto_0
.end method

.method public storePicture()V
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->showDialog(Landroid/app/Activity;)V

    .line 167
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->url:Ljava/lang/String;

    new-instance v2, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$3;

    invoke-direct {v2, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->downloadPicture(Landroid/content/Context;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;)V

    .line 179
    return-void
.end method
