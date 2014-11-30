.class public Ldolphin/net/http/SslError;
.super Landroid/net/http/SslError;
.source "SslError.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SSL_DATE_INVALID:I = 0x4

.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_INVALID:I = 0x5

.field public static final SSL_MAX_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Ldolphin/net/http/SslError;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/net/http/SslError;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;)V

    .line 110
    sget-boolean v0, Ldolphin/net/http/SslError;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iput-object p3, p0, Ldolphin/net/http/SslError;->mUrl:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ldolphin/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Ldolphin/net/http/SslError;
    .locals 2

    .prologue
    const/16 v1, -0xc8

    .line 136
    sget-boolean v0, Ldolphin/net/http/SslError;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/16 v0, -0x12b

    if-lt p0, v0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_1
    if-ne p0, v1, :cond_2

    .line 138
    new-instance v0, Ldolphin/net/http/SslError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_2
    const/16 v0, -0xc9

    if-ne p0, v0, :cond_3

    .line 140
    new-instance v0, Ldolphin/net/http/SslError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    const/16 v0, -0xca

    if-ne p0, v0, :cond_4

    .line 142
    new-instance v0, Ldolphin/net/http/SslError;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    new-instance v0, Ldolphin/net/http/SslError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Ldolphin/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ldolphin/net/http/SslError;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
