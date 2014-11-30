.class public final Lcom/mobosquare/sdk/subscription/c/j;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static final a:[B

.field private static b:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-wide v0, -0x492c8dfbce6d952L

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/a;->a(J)[B

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/j;->a:[B

    .line 67
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    sget-object v1, Lcom/mobosquare/sdk/subscription/c/j;->a:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 68
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/j;->b:Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "SecurityUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init key error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mobosquare/sdk/subscription/c/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    array-length v3, p0

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    aget-byte v4, p0, v0

    .line 87
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 816
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 817
    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/j;->b([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 820
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/c/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 845
    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/j;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .locals 1

    .prologue
    .line 795
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 796
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 797
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 800
    const/4 v0, 0x0

    goto :goto_0
.end method
