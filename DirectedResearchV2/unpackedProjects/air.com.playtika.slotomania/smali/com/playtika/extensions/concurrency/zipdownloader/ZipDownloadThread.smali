.class public Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;
.super Ljava/lang/Thread;
.source "ZipDownloadThread.java"


# instance fields
.field private final ZIP_ELEMENT_SIZE_EXCEPTION:Ljava/lang/String;

.field private final destinationDirectory:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final timeout:I

.field private final urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "destinationDirectory"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const-string v0, "ZipElementSizeException"

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->ZIP_ELEMENT_SIZE_EXCEPTION:Ljava/lang/String;

    .line 27
    iput p1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->timeout:I

    .line 28
    iput-object p2, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->handler:Landroid/os/Handler;

    .line 29
    iput-object p3, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->urlString:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->destinationDirectory:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 35
    const/16 v21, 0x0

    .line 36
    .local v21, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    .line 38
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->urlString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 40
    .local v7, "conn":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->timeout:I

    move/from16 v23, v0

    move-object v0, v7

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v16

    .line 42
    .local v16, "size":I
    new-instance v22, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 44
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .local v22, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v11, 0x0

    .line 45
    .local v11, "loaded":I
    const/4 v14, 0x0

    .line 46
    .local v14, "percentage":I
    const/4 v13, -0x1

    .line 47
    .local v13, "newPercentage":I
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .local v19, "ze":Ljava/util/zip/ZipEntry;
    move-object v5, v4

    .line 49
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_0

    if-nez v19, :cond_2

    .line 97
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipInputStream;->close()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_b

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v21, v22

    .line 123
    .end local v7    # "conn":Ljava/net/URLConnection;
    .end local v11    # "loaded":I
    .end local v13    # "newPercentage":I
    .end local v14    # "percentage":I
    .end local v16    # "size":I
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    :goto_1
    return-void

    .line 50
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "conn":Ljava/net/URLConnection;
    .restart local v11    # "loaded":I
    .restart local v13    # "newPercentage":I
    .restart local v14    # "percentage":I
    .restart local v16    # "size":I
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v22    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->destinationDirectory:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v20, "zipDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_3

    .line 52
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_3
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 56
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 61
    :goto_2
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v6, v0

    .line 63
    .local v6, "buffer":[B
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    .local v8, "count":I
    const/16 v23, -0x1

    move v0, v8

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 83
    .end local v8    # "count":I
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 84
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 86
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v23

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-eqz v23, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_9

    .line 87
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 88
    .local v12, "msg":Landroid/os/Message;
    const/16 v23, -0x2

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/os/Message;->what:I

    .line 89
    const-string v23, "ZipElementSizeException"

    move-object/from16 v0, v23

    move-object v1, v12

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v22

    .line 91
    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 58
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "buffer":[B
    .end local v12    # "msg":Landroid/os/Message;
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v22    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 100
    .end local v10    # "file":Ljava/io/File;
    .end local v20    # "zipDir":Ljava/io/File;
    :catch_0
    move-exception v23

    move-object/from16 v9, v23

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v21, v22

    .line 102
    .end local v7    # "conn":Ljava/net/URLConnection;
    .end local v11    # "loaded":I
    .end local v13    # "newPercentage":I
    .end local v14    # "percentage":I
    .end local v16    # "size":I
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 106
    :goto_5
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 109
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_1

    .line 110
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 111
    .restart local v12    # "msg":Landroid/os/Message;
    move-object v0, v9

    instance-of v0, v0, Ljava/util/zip/ZipException;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 112
    const/16 v23, -0x2

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/os/Message;->what:I

    .line 115
    :goto_7
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 116
    .local v17, "sw":Ljava/io/StringWriter;
    new-instance v15, Ljava/io/PrintWriter;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 117
    .local v15, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v9, v15}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 66
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .end local v17    # "sw":Ljava/io/StringWriter;
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "buffer":[B
    .restart local v7    # "conn":Ljava/net/URLConnection;
    .restart local v8    # "count":I
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "loaded":I
    .restart local v13    # "newPercentage":I
    .restart local v14    # "percentage":I
    .restart local v16    # "size":I
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipDir":Ljava/io/File;
    .restart local v22    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_6
    const/16 v23, 0x1

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 67
    :try_start_7
    new-instance v23, Ljava/lang/Exception;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Exception;-><init>()V

    throw v23

    .line 100
    .end local v6    # "buffer":[B
    .end local v8    # "count":I
    .end local v10    # "file":Ljava/io/File;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipDir":Ljava/io/File;
    :catch_1
    move-exception v23

    move-object/from16 v9, v23

    move-object/from16 v21, v22

    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 70
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "buffer":[B
    .restart local v8    # "count":I
    .restart local v10    # "file":Ljava/io/File;
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipDir":Ljava/io/File;
    .restart local v22    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_7
    add-int/2addr v11, v8

    .line 71
    move v0, v11

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c80000

    mul-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 73
    if-eq v13, v14, :cond_8

    .line 74
    move v14, v13

    .line 75
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 76
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/os/Message;->what:I

    .line 77
    iput v14, v12, Landroid/os/Message;->arg1:I

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    const/16 v23, 0x0

    move-object v0, v4

    move-object v1, v6

    move/from16 v2, v23

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto/16 :goto_3

    .line 94
    .end local v8    # "count":I
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v19

    move-object v5, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 114
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "buffer":[B
    .end local v7    # "conn":Ljava/net/URLConnection;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "loaded":I
    .end local v13    # "newPercentage":I
    .end local v14    # "percentage":I
    .end local v16    # "size":I
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipDir":Ljava/io/File;
    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "msg":Landroid/os/Message;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_a
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/os/Message;->what:I

    goto/16 :goto_7

    .line 103
    .end local v12    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v23

    goto/16 :goto_5

    .line 107
    :catch_3
    move-exception v23

    goto/16 :goto_6

    .line 100
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v23

    move-object/from16 v9, v23

    goto/16 :goto_4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "conn":Ljava/net/URLConnection;
    .restart local v11    # "loaded":I
    .restart local v13    # "newPercentage":I
    .restart local v14    # "percentage":I
    .restart local v16    # "size":I
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v22    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_b
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v21, v22

    .end local v22    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1
.end method
