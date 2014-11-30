.class public Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field public static final SOCKET_SIZE:I = 0x2000

.field private static instance:Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p0, "timeoutMilliseconds"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;

    .line 48
    return-void
.end method


# virtual methods
.method protected internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2
    .param p1, "timeoutMilliseconds"    # I

    .prologue
    .line 59
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 61
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    if-lez p1, :cond_0

    .line 63
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    :cond_0
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method
