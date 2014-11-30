.class Lcom/stuv/ane/mdotm/MdotMReceiver$1;
.super Ljava/lang/Thread;
.source "MdotMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/mdotm/MdotMReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/mdotm/MdotMReceiver;


# direct methods
.method constructor <init>(Lcom/stuv/ane/mdotm/MdotMReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/mdotm/MdotMReceiver$1;->this$0:Lcom/stuv/ane/mdotm/MdotMReceiver;

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 64
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/stuv/ane/mdotm/MdotMReceiver$1;->this$0:Lcom/stuv/ane/mdotm/MdotMReceiver;

    iget-object v3, v3, Lcom/stuv/ane/mdotm/MdotMReceiver;->postBackUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
