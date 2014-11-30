.class public Lcom/dolphin/browser/e/a/a;
.super Lcom/dolphin/browser/e/a/h;
.source "AESCryptor.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/e/b/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/e/a/h;-><init>(Lcom/dolphin/browser/e/b/d;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "aes"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method
