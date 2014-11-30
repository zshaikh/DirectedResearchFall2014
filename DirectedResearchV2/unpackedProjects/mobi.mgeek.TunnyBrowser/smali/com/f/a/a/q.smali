.class Lcom/f/a/a/q;
.super Ljava/lang/Object;
.source "MySSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/f/a/a/p;


# direct methods
.method constructor <init>(Lcom/f/a/a/p;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/f/a/a/q;->a:Lcom/f/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
