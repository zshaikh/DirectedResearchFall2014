.class public Lcom/bitrhymes/googleanalytics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParserError"
    }
.end annotation


# static fields
.field public static GOOGLE_ANALYTICS_ID:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/bitrhymes/googleanalytics/Utils;->GOOGLE_ANALYTICS_ID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 151
    .local v0, md:Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 152
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 153
    .local v1, sha1hash:[B
    invoke-static {v1}, Lcom/bitrhymes/googleanalytics/Utils;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v1, buf:Ljava/lang/StringBuilder;
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 136
    :cond_0
    aget-byte v0, p0, v6

    .line 137
    .local v0, b:B
    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 138
    .local v2, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 140
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v2, :cond_1

    const/16 v7, 0x9

    if-gt v2, v7, :cond_1

    add-int/lit8 v7, v2, 0x30

    int-to-char v7, v7

    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    and-int/lit8 v2, v0, 0xf

    .line 143
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v7, 0x1

    .line 139
    if-lt v4, v7, :cond_2

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    const/16 v7, 0xa

    sub-int v7, v2, v7

    add-int/lit8 v7, v7, 0x61

    int-to-char v7, v7

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "mounted"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x400

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, suffix:Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 65
    const-string v2, "KB"

    .line 66
    div-long/2addr p0, v4

    .line 67
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 68
    const-string v2, "MB"

    .line 69
    div-long/2addr p0, v4

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, resultBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int v0, v3, v4

    .line 76
    .local v0, commaOffset:I
    :goto_0
    if-gtz v0, :cond_2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 77
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public static getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter "exception"

    .prologue
    .line 56
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v0, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "commaSeparatedString"

    .prologue
    .line 32
    new-instance v2, Ljava/util/StringTokenizer;

    .line 33
    const-string v3, ","

    .line 32
    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 35
    .local v0, array:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    :cond_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 44
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 47
    .local v0, digest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v3, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 50
    :cond_0
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readFromFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "path"
    .parameter "context"

    .prologue
    const-string v9, "Utils "

    .line 105
    const-string v5, ""

    .line 108
    .local v5, ret:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 110
    .local v2, inputStream:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 111
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 113
    .local v3, inputStreamReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 116
    .local v4, receiveString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v4           #receiveString:Ljava/lang/String;
    .end local v6           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-object v5

    .line 119
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v4       #receiveString:Ljava/lang/String;
    .restart local v6       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v4           #receiveString:Ljava/lang/String;
    .end local v6           #stringBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 126
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "Utils "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File not found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 128
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Utils "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can not read file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readFromSDFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 185
    const-string v5, ""

    .line 188
    .local v5, ret:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/bitrhymes/googleanalytics/Utils;->externalMemoryAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "Android"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v0, bingoBashDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 192
    const-string v7, "Utils"

    const-string v8, "Directory not created"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_0

    .line 194
    const-string v7, ""

    .line 212
    .end local v0           #bingoBashDir:Ljava/io/File;
    :goto_0
    return-object v7

    .line 196
    .restart local v0       #bingoBashDir:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .local v3, file:Ljava/io/File;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v4, in:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v1, v7, [B

    .line 200
    .local v1, buffer:[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 201
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .end local v5           #ret:Ljava/lang/String;
    .local v6, ret:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .end local v0           #bingoBashDir:Ljava/io/File;
    .end local v1           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v6           #ret:Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v7, v5

    .line 212
    goto :goto_0

    .line 204
    .restart local v0       #bingoBashDir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 205
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 208
    .end local v0           #bingoBashDir:Ljava/io/File;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 209
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "Exception"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File write failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #ret:Ljava/lang/String;
    .restart local v0       #bingoBashDir:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #ret:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #ret:Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/String;
    goto :goto_2
.end method

.method public static writeToFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "data"
    .parameter "context"
    .parameter "path"

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 94
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 94
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v1, outputStreamWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File write failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeToSDFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "fileName"

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/bitrhymes/googleanalytics/Utils;->externalMemoryAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "Android"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, bingoBashDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    const-string v4, "Utils"

    const-string v5, "Directory not created"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    .end local v0           #bingoBashDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0       #bingoBashDir:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v3, out:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 171
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 172
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 175
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 178
    .end local v0           #bingoBashDir:Ljava/io/File;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 179
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "Exception"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File write failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
