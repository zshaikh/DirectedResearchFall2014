.class public final Lcom/a/a/a/k;
.super Ljava/lang/Object;
.source "MyTrustStoreManager.java"


# static fields
.field private static a:Lcom/a/a/a/k;


# instance fields
.field private b:Landroid/content/Context;

.field private c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/a/a/a/k;->b:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/a/a/a/k;->c:[C

    return-void
.end method

.method public static a()Lcom/a/a/a/k;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/k;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/a/a/a/k;

    invoke-direct {v0}, Lcom/a/a/a/k;-><init>()V

    sput-object v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/k;

    .line 20
    :cond_0
    sget-object v0, Lcom/a/a/a/k;->a:Lcom/a/a/a/k;

    return-object v0
.end method

.method private b([C)Ljava/security/KeyStore;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    const-string v1, "MyTrustStoreManager"

    const-string v2, "getTrustStore"

    invoke-static {v1, v2}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/a/a/a/k;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-object v0

    .line 41
    :cond_0
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/a/a/a/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "belugatruststore.bks"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    const-string v1, "MyTrustStoreManager"

    const-string v2, "failed to load truststore!"

    invoke-static {v1, v2}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/a/a/a/k;->b:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public final a([C)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/a/a/a/k;->c:[C

    .line 29
    return-void
.end method

.method public final b()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/a/a/a/k;->c:[C

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->c:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b([C)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0
.end method
