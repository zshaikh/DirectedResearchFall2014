.class public Ldolphin/webkit/a/b/a/a;
.super Ldolphin/webkit/a/a/c;
.source "NetscapeCertRequest.java"


# instance fields
.field a:Ldolphin/webkit/a/a/b/a;

.field b:[B

.field c:Ljava/lang/String;

.field d:Ldolphin/webkit/a/a/an;

.field e:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldolphin/webkit/a/a/b/a;Ljava/security/PublicKey;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Ldolphin/webkit/a/a/c;-><init>()V

    .line 70
    iput-object p1, p0, Ldolphin/webkit/a/b/a/a;->c:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Ldolphin/webkit/a/b/a/a;->a:Ldolphin/webkit/a/a/b/a;

    .line 72
    iput-object p3, p0, Ldolphin/webkit/a/b/a/a;->e:Ljava/security/PublicKey;

    .line 74
    new-instance v0, Ldolphin/webkit/a/a/d;

    invoke-direct {v0}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 75
    invoke-direct {p0}, Ldolphin/webkit/a/b/a/a;->e()Ldolphin/webkit/a/a/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 77
    new-instance v1, Ldolphin/webkit/a/a/ax;

    invoke-direct {v1, p1}, Ldolphin/webkit/a/a/ax;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 79
    new-instance v1, Ldolphin/webkit/a/a/an;

    new-instance v2, Ldolphin/webkit/a/a/bh;

    invoke-direct {v2, v0}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    invoke-direct {v1, v2}, Ldolphin/webkit/a/a/an;-><init>(Ldolphin/webkit/a/a/ap;)V

    iput-object v1, p0, Ldolphin/webkit/a/b/a/a;->d:Ldolphin/webkit/a/a/an;

    .line 80
    return-void
.end method

.method private e()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/a/b/a/a;->e:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 195
    new-instance v1, Ldolphin/webkit/a/a/h;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ldolphin/webkit/a/a/h;-><init>(Ljava/io/InputStream;)V

    .line 198
    invoke-virtual {v1}, Ldolphin/webkit/a/a/h;->c()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/security/PrivateKey;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldolphin/webkit/a/b/a/a;->a(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 147
    return-void
.end method

.method public a(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Ldolphin/webkit/a/b/a/a;->a:Ldolphin/webkit/a/a/b/a;

    invoke-virtual {v0}, Ldolphin/webkit/a/a/b/a;->e()Ldolphin/webkit/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/a/a/bc;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 157
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 166
    :goto_0
    new-instance v1, Ldolphin/webkit/a/a/d;

    invoke-direct {v1}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 168
    invoke-direct {p0}, Ldolphin/webkit/a/b/a/a;->e()Ldolphin/webkit/a/a/bb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 169
    new-instance v2, Ldolphin/webkit/a/a/ax;

    iget-object v3, p0, Ldolphin/webkit/a/b/a/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ldolphin/webkit/a/a/ax;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 173
    :try_start_0
    new-instance v2, Ldolphin/webkit/a/a/bh;

    invoke-direct {v2, v1}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    const-string v1, "DER"

    invoke-virtual {v2, v1}, Ldolphin/webkit/a/a/bh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/b/a/a;->b:[B

    .line 181
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d()Ldolphin/webkit/a/a/bb;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ldolphin/webkit/a/a/d;

    invoke-direct {v0}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 210
    new-instance v1, Ldolphin/webkit/a/a/d;

    invoke-direct {v1}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 214
    :try_start_0
    invoke-direct {p0}, Ldolphin/webkit/a/b/a/a;->e()Ldolphin/webkit/a/a/bb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    new-instance v2, Ldolphin/webkit/a/a/ax;

    iget-object v3, p0, Ldolphin/webkit/a/b/a/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ldolphin/webkit/a/a/ax;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 223
    new-instance v2, Ldolphin/webkit/a/a/bh;

    invoke-direct {v2, v1}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    invoke-virtual {v0, v2}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 224
    iget-object v1, p0, Ldolphin/webkit/a/b/a/a;->a:Ldolphin/webkit/a/a/b/a;

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 225
    new-instance v1, Ldolphin/webkit/a/a/an;

    iget-object v2, p0, Ldolphin/webkit/a/b/a/a;->b:[B

    invoke-direct {v1, v2}, Ldolphin/webkit/a/a/an;-><init>([B)V

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 227
    new-instance v1, Ldolphin/webkit/a/a/bh;

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    return-object v1

    .line 216
    :catch_0
    move-exception v2

    goto :goto_0
.end method
