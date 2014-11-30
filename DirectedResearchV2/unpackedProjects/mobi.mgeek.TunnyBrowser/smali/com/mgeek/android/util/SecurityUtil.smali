.class public final Lcom/mgeek/android/util/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asHexString([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desDecrypt(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static desEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desEncrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/util/cf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKey([B)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->d([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 99
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->d(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hash(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->a(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hash(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hash([B)[B
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5String([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaDecode([BLjava/security/Key;)[B
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->a([BLjava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncode([BLjava/security/Key;)[B
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/cf;->b([BLjava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha1Hash([B)[B
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
