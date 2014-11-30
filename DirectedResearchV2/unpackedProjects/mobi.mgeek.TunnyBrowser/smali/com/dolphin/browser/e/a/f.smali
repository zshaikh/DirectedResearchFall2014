.class public Lcom/dolphin/browser/e/a/f;
.super Lcom/dolphin/browser/e/a/c;
.source "RSACryptor.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/e/b/b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dolphin/browser/e/a/c;-><init>(Lcom/dolphin/browser/e/b/b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "rsa"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "RSA/None/PKCS1Padding"

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a/f;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    return v0
.end method
