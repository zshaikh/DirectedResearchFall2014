.class Lcom/dolphin/browser/l/c;
.super Lcom/dolphin/browser/l/b;
.source "AES.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "AES"

    const-string v1, "v01"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/l/c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 37
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 39
    invoke-static {p2}, Lcom/dolphin/browser/util/cn;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/dolphin/browser/l/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/l/c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 46
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 48
    invoke-static {p2}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
