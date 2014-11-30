.class public abstract Lcom/dolphin/browser/e/b/d;
.super Ljava/lang/Object;
.source "SymmetricKeyProvider.java"

# interfaces
.implements Lcom/dolphin/browser/e/b;


# instance fields
.field protected a:Ljavax/crypto/spec/SecretKeySpec;

.field protected b:Ljavax/crypto/spec/IvParameterSpec;

.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 65
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 66
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/e/b/d;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 67
    iput p1, p0, Lcom/dolphin/browser/e/b/d;->c:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/dolphin/browser/e/b/d;->b:Ljavax/crypto/spec/IvParameterSpec;

    .line 55
    return-void
.end method

.method public b()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/e/b/d;->a:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method public c()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/e/b/d;->b:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method
