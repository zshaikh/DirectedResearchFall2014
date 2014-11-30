.class public Lcom/pocketchange/android/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILTER_KEY_ANDROID_VERSIONS:Ljava/lang/String; = "androidVersions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeRemainingTimeout(JJJ)J
    .locals 5
    .param p0, "timeoutExpiryTime"    # J
    .param p2, "now"    # J
    .param p4, "timeout"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 57
    sub-long v0, p0, p2

    .line 58
    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    cmp-long v2, v0, p4

    if-lez v2, :cond_1

    :cond_0
    move-wide v0, v3

    :cond_1
    return-wide v0
.end method

.method public static deviceMatchesFilter(Lorg/json/JSONObject;)Z
    .locals 7
    .param p0, "filter"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "androidVersions"

    .line 38
    const-string v0, "androidVersions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "androidVersions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v5

    .line 42
    :goto_0
    if-ge v2, v1, :cond_2

    .line 43
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 44
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v4, :cond_0

    move v0, v6

    .line 49
    :goto_1
    if-nez v0, :cond_1

    move v0, v5

    .line 53
    :goto_2
    return v0

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    .line 53
    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method public static getCallingActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/pocketchange/android/Util;->getCallingActivityClassName([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallingActivityClassName([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5
    .param p0, "traceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 24
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 25
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 27
    const-class v4, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 34
    :goto_1
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 99
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 101
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 71
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/pocketchange/android/Util;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 76
    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    array-length v0, p0

    .line 85
    if-nez v0, :cond_1

    .line 86
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 90
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
