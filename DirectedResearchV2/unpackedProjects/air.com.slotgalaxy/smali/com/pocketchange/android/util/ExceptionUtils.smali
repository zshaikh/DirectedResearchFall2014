.class public Lcom/pocketchange/android/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSignature(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 10
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v9, 0x0

    .line 20
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    mul-int/lit8 v3, v2, 0x4

    new-array v3, v3, [B

    move v4, v9

    move v5, v9

    .line 28
    :goto_1
    if-ge v5, v2, :cond_0

    .line 29
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v6

    .line 30
    add-int/lit8 v7, v4, 0x3

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    .line 31
    ushr-int/lit8 v6, v6, 0x8

    .line 32
    add-int/lit8 v7, v4, 0x2

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    .line 33
    ushr-int/lit8 v6, v6, 0x8

    .line 34
    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    .line 35
    ushr-int/lit8 v6, v6, 0x8

    .line 36
    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 28
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/4 v0, 0x0

    .line 40
    :goto_2
    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pocketchange/android/Util;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static createTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 11
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 12
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
