.class final Ldolphin/webkit/ax;
.super Ljava/lang/Object;
.source "CertTool.java"


# static fields
.field private static final a:Ldolphin/webkit/a/a/b/a;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ldolphin/webkit/a/a/b/a;

    sget-object v1, Ldolphin/webkit/a/a/a/a;->c:Ldolphin/webkit/a/a/l;

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/b/a;-><init>(Ldolphin/webkit/a/a/bc;)V

    sput-object v0, Ldolphin/webkit/ax;->a:Ldolphin/webkit/a/a/b/a;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/webkit/ax;->b:Ljava/util/HashMap;

    .line 42
    sget-object v0, Ldolphin/webkit/ax;->b:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Ldolphin/webkit/ax;->b:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ldolphin/webkit/ax;->b:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 54
    if-nez p1, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 55
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 57
    new-instance v1, Ldolphin/webkit/a/b/a/a;

    sget-object v2, Ldolphin/webkit/ax;->a:Ldolphin/webkit/a/a/b/a;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Ldolphin/webkit/a/b/a/a;-><init>(Ljava/lang/String;Ldolphin/webkit/a/a/b/a;Ljava/security/PublicKey;)V

    .line 59
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/b/a/a;->a(Ljava/security/PrivateKey;)V

    .line 60
    invoke-virtual {v1}, Ldolphin/webkit/a/b/a/a;->d()Ldolphin/webkit/a/a/bb;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/a/a/bb;->b()[B

    move-result-object v1

    .line 62
    invoke-static {}, Ldolphin/webkit/a/c/b;->a()Ldolphin/webkit/a/c/b;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Ldolphin/webkit/a/c/b;->a(Landroid/content/Context;Ljava/security/KeyPair;)V

    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ldolphin/webkit/a/c/a/a;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-object v0

    .line 54
    :cond_0
    const/16 v0, 0x400

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "CertTool"

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ldolphin/webkit/ax;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Ldolphin/webkit/a/c/b;->a()Ldolphin/webkit/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ldolphin/webkit/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 72
    return-void
.end method

.method static a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "High Grade"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Medium Grade"

    aput-object v2, v0, v1

    return-object v0
.end method
