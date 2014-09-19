.class Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;
.super Lcom/fusepowered/m1/android/MMBaseActivity;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickerActivity"
.end annotation


# instance fields
.field private fileUri:Landroid/net/Uri;

.field hasRequestedPic:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 26
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 183
    invoke-super/range {p0 .. p3}, Lcom/fusepowered/m1/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    if-eqz p3, :cond_1

    .line 186
    const/16 v20, 0x0

    .line 187
    .local v20, in:Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 191
    .local v24, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 193
    .local v5, contentUri:Landroid/net/Uri;
    if-nez v5, :cond_7

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 196
    .local v15, bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_1

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v19, file:Ljava/io/File;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v12, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v8, 0x0

    invoke-virtual {v10, v7, v8, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 204
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 205
    .local v11, bitmapdata:[B
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 206
    .local v13, bs:Ljava/io/ByteArrayInputStream;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 207
    .end local v24           #out:Ljava/io/OutputStream;
    .local v25, out:Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v14, v7, [B

    .line 209
    .local v14, buf:[B
    :goto_0
    invoke-virtual {v13, v14}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v23

    .local v23, len:I
    if-lez v23, :cond_2

    .line 210
    const/4 v7, 0x0

    move-object/from16 v0, v25

    move-object v1, v14

    move v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 212
    .end local v14           #buf:[B
    .end local v23           #len:I
    :catch_0
    move-exception v7

    move-object/from16 v24, v25

    .line 219
    .end local v11           #bitmapdata:[B
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #bs:Ljava/io/ByteArrayInputStream;
    .end local v19           #file:Ljava/io/File;
    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    :goto_1
    if-eqz v20, :cond_0

    .line 220
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_0
    if-eqz v24, :cond_1

    .line 222
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 283
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #bundle:Landroid/os/Bundle;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v24           #out:Ljava/io/OutputStream;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 285
    :try_start_4
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 286
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->finish()V

    .line 288
    return-void

    .line 219
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmapdata:[B
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bs:Ljava/io/ByteArrayInputStream;
    .restart local v14       #buf:[B
    .restart local v15       #bundle:Landroid/os/Bundle;
    .restart local v19       #file:Ljava/io/File;
    .restart local v20       #in:Ljava/io/InputStream;
    .restart local v23       #len:I
    .restart local v25       #out:Ljava/io/OutputStream;
    :cond_2
    if-eqz v20, :cond_3

    .line 220
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_3
    if-eqz v25, :cond_4

    .line 222
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object/from16 v24, v25

    .line 226
    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 224
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v25       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    move-object/from16 v24, v25

    .line 227
    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 217
    .end local v11           #bitmapdata:[B
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #bs:Ljava/io/ByteArrayInputStream;
    .end local v14           #buf:[B
    .end local v19           #file:Ljava/io/File;
    .end local v23           #len:I
    :catchall_0
    move-exception v7

    .line 219
    :goto_3
    if-eqz v20, :cond_5

    .line 220
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 221
    :cond_5
    if-eqz v24, :cond_6

    .line 222
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 226
    :cond_6
    :goto_4
    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 278
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #bundle:Landroid/os/Bundle;
    :catch_2
    move-exception v7

    move-object/from16 v18, v7

    .line 280
    .local v18, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error with picture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 230
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v5       #contentUri:Landroid/net/Uri;
    :cond_7
    if-eqz v5, :cond_1

    .line 232
    const/4 v7, 0x1

    :try_start_8
    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v6, v7

    .line 233
    .local v6, proj:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 234
    .local v4, resolver:Landroid/content/ContentResolver;
    if-eqz v4, :cond_1

    .line 236
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 237
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_1

    .line 239
    const-string v7, "_data"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 240
    .local v22, index:I
    const/4 v7, -0x1

    move/from16 v0, v22

    move v1, v7

    if-eq v0, v1, :cond_1

    .line 242
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v16, chosenFile:Ljava/io/File;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 249
    :try_start_9
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v19       #file:Ljava/io/File;
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 251
    .end local v20           #in:Ljava/io/InputStream;
    .local v21, in:Ljava/io/InputStream;
    :try_start_a
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 252
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v25       #out:Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_b
    new-array v14, v7, [B

    .line 254
    .restart local v14       #buf:[B
    :goto_5
    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .restart local v23       #len:I
    if-lez v23, :cond_9

    .line 255
    const/4 v7, 0x0

    move-object/from16 v0, v25

    move-object v1, v14

    move v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    .line 257
    .end local v14           #buf:[B
    .end local v23           #len:I
    :catch_3
    move-exception v7

    move-object/from16 v24, v25

    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .line 264
    .end local v19           #file:Ljava/io/File;
    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    :goto_6
    if-eqz v20, :cond_8

    .line 265
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_8
    if-eqz v24, :cond_1

    .line 267
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 269
    :catch_4
    move-exception v7

    goto/16 :goto_2

    .line 264
    .end local v20           #in:Ljava/io/InputStream;
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v14       #buf:[B
    .restart local v19       #file:Ljava/io/File;
    .restart local v21       #in:Ljava/io/InputStream;
    .restart local v23       #len:I
    .restart local v25       #out:Ljava/io/OutputStream;
    :cond_9
    if-eqz v21, :cond_a

    .line 265
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_a
    if-eqz v25, :cond_b

    .line 267
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_b
    move-object/from16 v24, v25

    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .line 271
    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 269
    .end local v20           #in:Ljava/io/InputStream;
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v21       #in:Ljava/io/InputStream;
    .restart local v25       #out:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object/from16 v24, v25

    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .line 272
    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 262
    .end local v14           #buf:[B
    .end local v19           #file:Ljava/io/File;
    .end local v23           #len:I
    :catchall_1
    move-exception v7

    .line 264
    :goto_7
    if-eqz v20, :cond_c

    .line 265
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_c
    if-eqz v24, :cond_d

    .line 267
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 271
    :cond_d
    :goto_8
    :try_start_f
    throw v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 286
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #proj:[Ljava/lang/String;
    .end local v16           #chosenFile:Ljava/io/File;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v22           #index:I
    .end local v24           #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v8

    .line 269
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #proj:[Ljava/lang/String;
    .restart local v16       #chosenFile:Ljava/io/File;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #in:Ljava/io/InputStream;
    .restart local v22       #index:I
    .restart local v24       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v8

    goto :goto_8

    .line 262
    .end local v20           #in:Ljava/io/InputStream;
    .restart local v19       #file:Ljava/io/File;
    .restart local v21       #in:Ljava/io/InputStream;
    :catchall_3
    move-exception v7

    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    goto :goto_7

    .end local v20           #in:Ljava/io/InputStream;
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v21       #in:Ljava/io/InputStream;
    .restart local v25       #out:Ljava/io/OutputStream;
    :catchall_4
    move-exception v7

    move-object/from16 v24, v25

    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    goto :goto_7

    .line 257
    .end local v19           #file:Ljava/io/File;
    :catch_7
    move-exception v7

    goto :goto_6

    .end local v20           #in:Ljava/io/InputStream;
    .restart local v19       #file:Ljava/io/File;
    .restart local v21       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v7

    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/InputStream;
    .restart local v20       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 224
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v6           #proj:[Ljava/lang/String;
    .end local v16           #chosenFile:Ljava/io/File;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v19           #file:Ljava/io/File;
    .end local v22           #index:I
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #bundle:Landroid/os/Bundle;
    :catch_9
    move-exception v8

    goto/16 :goto_4

    .line 217
    .end local v24           #out:Ljava/io/OutputStream;
    .restart local v11       #bitmapdata:[B
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bs:Ljava/io/ByteArrayInputStream;
    .restart local v19       #file:Ljava/io/File;
    .restart local v25       #out:Ljava/io/OutputStream;
    :catchall_5
    move-exception v7

    move-object/from16 v24, v25

    .end local v25           #out:Ljava/io/OutputStream;
    .restart local v24       #out:Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 224
    .end local v11           #bitmapdata:[B
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #bs:Ljava/io/ByteArrayInputStream;
    .end local v19           #file:Ljava/io/File;
    :catch_a
    move-exception v7

    goto/16 :goto_2

    .line 212
    :catch_b
    move-exception v7

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 149
    .local v0, inState:Landroid/os/Bundle;
    const-string v2, "hasRequestedPic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 153
    .end local v0           #inState:Landroid/os/Bundle;
    :cond_0
    iget-boolean v2, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    if-nez v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->fileUri:Landroid/net/Uri;

    .line 164
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    iput-boolean v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 167
    invoke-virtual {p0, v1, v5}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iput-boolean v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 175
    invoke-virtual {p0, v1, v5}, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, outState:Landroid/os/Bundle;
    const-string v1, "hasRequestedPic"

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-object v0
.end method
