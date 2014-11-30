.class public Lcom/dolphin/browser/util/u;
.super Ljava/lang/Object;
.source "BackupHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/u;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/util/u;->a:Lcom/dolphin/browser/util/u;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tunnybrowser_gestures"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gesture_marked"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gestures"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gesture_lib"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/util/u;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/util/u;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/dolphin/browser/util/u;->a:Lcom/dolphin/browser/util/u;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/dolphin/browser/util/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/util/u;->a:Lcom/dolphin/browser/util/u;

    .line 86
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/u;->a:Lcom/dolphin/browser/util/u;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "AES/ECB/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    .line 95
    return-void
.end method

.method private static a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 388
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 389
    invoke-static {v0, p0}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 390
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 391
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 392
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    sget-object v1, Lcom/dolphin/browser/util/u;->d:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 74
    sget-object v2, Lcom/dolphin/browser/util/u;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/security/Key;
    .locals 5

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "58324759256a4d792828644f3c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->b([B)[B

    move-result-object v0

    .line 401
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 402
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    const-string v1, "BackupHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dolphinbackup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/dolphin/browser/util/z;

    invoke-direct {v0}, Lcom/dolphin/browser/util/z;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :goto_0
    :try_start_1
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 274
    :goto_2
    throw v0

    .line 223
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/dolphin/browser/util/u;->a()V

    .line 225
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 226
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "3d6b27465424597a55443e7532"

    .line 230
    :cond_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/util/u;->b(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/w;->a(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Lcom/dolphin/browser/util/w;

    .line 234
    new-instance v3, Ljavax/crypto/CipherInputStream;

    iget-object v0, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    :try_start_5
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 239
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    :goto_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 244
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    invoke-static {v1, v2}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 247
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 248
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 249
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 255
    :catch_1
    move-exception v0

    .line 256
    :goto_4
    :try_start_7
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 269
    :cond_2
    :try_start_8
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 276
    :goto_5
    return-void

    .line 258
    :catch_2
    move-exception v0

    .line 259
    :goto_6
    :try_start_9
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 261
    :catch_3
    move-exception v0

    .line 262
    :goto_7
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 264
    :catch_4
    move-exception v0

    .line 265
    :goto_8
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 270
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto/16 :goto_2

    .line 268
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1

    .line 264
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v1, v3

    goto :goto_8

    .line 261
    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v1, v3

    goto :goto_7

    .line 258
    :catch_b
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v1, v3

    goto :goto_6

    .line 255
    :catch_d
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_e
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 252
    :catch_f
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :catch_10
    move-exception v0

    move-object v1, v3

    goto/16 :goto_0
.end method

.method private d(Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v2, Ljava/io/File;

    const-string v3, "shared_prefs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    new-instance v3, Ljava/io/File;

    const-string v4, "databases"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    .line 190
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    .line 192
    new-instance v1, Ljava/io/File;

    const-string v4, "databases"

    invoke-direct {v1, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    new-instance v4, Ljava/io/File;

    const-string v5, "shared_prefs"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 196
    if-eqz v4, :cond_0

    move v1, v0

    .line 197
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 198
    aget-object v6, v4, v1

    .line 199
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    if-eqz v5, :cond_1

    .line 204
    :goto_1
    array-length v1, v5

    if-ge v0, v1, :cond_1

    .line 205
    aget-object v1, v5, v0

    .line 206
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lcom/dolphin/browser/util/v;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :cond_1
    return-void
.end method

.method private e(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/u;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "restore"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/dolphin/browser/util/z;

    invoke-direct {v0}, Lcom/dolphin/browser/util/z;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    throw v0

    .line 167
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/u;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/util/u;->c(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 177
    return-void

    .line 171
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/u;->d(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/u;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x4

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/util/u;->a()V

    .line 125
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    const-string v3, "3d6b27465424597a55443e7532"

    .line 130
    invoke-direct {p0, v3}, Lcom/dolphin/browser/util/u;->b(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 133
    iget-object v3, p0, Lcom/dolphin/browser/util/u;->c:Ljavax/crypto/Cipher;

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/w;->a(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Lcom/dolphin/browser/util/w;
    :try_end_0
    .catch Lcom/dolphin/browser/util/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/dolphin/browser/util/v; {:try_start_0 .. :try_end_0} :catch_5

    .line 153
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    .line 137
    const-string v2, "BackupHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    :catch_2
    move-exception v1

    .line 140
    const-string v2, "BackupHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    :catch_3
    move-exception v1

    .line 143
    const-string v2, "BackupHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    :catch_4
    move-exception v1

    .line 146
    const-string v2, "BackupHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 148
    :catch_5
    move-exception v1

    .line 149
    const-string v2, "BackupHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Ljava/io/File;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 289
    const-string v0, "backup"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v4

    .line 290
    const/4 v2, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/u;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/util/u;->a()V

    .line 298
    invoke-direct {p0, v5}, Lcom/dolphin/browser/util/u;->e(Ljava/io/File;)V

    .line 300
    invoke-static {p1}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    .line 302
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/util/u;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/io/File;

    const-string v6, "shared_prefs"

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    new-instance v6, Ljava/io/File;

    const-string v7, "databases"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    new-instance v7, Ljava/io/File;

    const-string v8, "files"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 307
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 308
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "3d6b27465424597a55443e7532"

    .line 312
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 313
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 315
    new-instance v0, Lcom/dolphin/browser/util/w;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Lcom/dolphin/browser/util/w;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    :try_start_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/util/u;->b(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v9

    .line 319
    if-eqz v9, :cond_1

    .line 320
    const-string v10, "AES/ECB/PKCS5PADDING"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 321
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 323
    invoke-virtual {v0, v1, v10}, Lcom/dolphin/browser/util/w;->a(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 324
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, v1, v10}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    if-eqz v8, :cond_2

    :try_start_3
    array-length v0, v8

    if-lez v0, :cond_2

    .line 337
    array-length v2, v8

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v9, v8, v0

    .line 338
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shared_prefs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v9, v10}, Lcom/dolphin/browser/util/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :try_start_4
    const-string v9, "BackupHelper"

    invoke-static {v9, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 332
    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    const-string v9, "BackupHelper"

    invoke-static {v9, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 332
    goto :goto_0

    .line 330
    :catch_2
    move-exception v0

    .line 331
    const-string v9, "BackupHelper"

    invoke-static {v9, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 342
    :cond_2
    if-eqz v6, :cond_4

    :try_start_5
    array-length v0, v6

    if-lez v0, :cond_4

    .line 343
    array-length v2, v6

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v8, v6, v0

    .line 344
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "webviewCache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "databases"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/dolphin/browser/util/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 343
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    :cond_4
    if-eqz v7, :cond_6

    array-length v0, v7

    if-lez v0, :cond_6

    .line 351
    array-length v2, v7

    move v0, v3

    :goto_3
    if-ge v0, v2, :cond_6

    aget-object v3, v7, v0

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/dolphin/browser/util/u;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "files"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/dolphin/browser/util/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 351
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 358
    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 380
    invoke-virtual {v4}, Lcom/dolphin/browser/util/cw;->a()J

    .line 382
    return-void

    .line 360
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 361
    :goto_4
    :try_start_6
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 373
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 376
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 380
    :cond_7
    invoke-virtual {v4}, Lcom/dolphin/browser/util/cw;->a()J

    throw v0

    .line 363
    :catch_4
    move-exception v0

    move-object v1, v2

    .line 364
    :goto_6
    :try_start_7
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 366
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 367
    :goto_7
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 369
    :catch_6
    move-exception v0

    move-object v1, v2

    .line 370
    :goto_8
    const-string v2, "BackupHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    new-instance v2, Lcom/dolphin/browser/util/v;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 373
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 369
    :catch_7
    move-exception v0

    goto :goto_8

    .line 366
    :catch_8
    move-exception v0

    goto :goto_7

    .line 363
    :catch_9
    move-exception v0

    goto :goto_6

    .line 360
    :catch_a
    move-exception v0

    goto :goto_4
.end method
