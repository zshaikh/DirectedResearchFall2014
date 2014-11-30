.class Lcom/applovin/impl/sdk/bd;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private c:Ljava/net/ServerSocket;

.field private volatile d:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bd;->c:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/bd;->d:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bd;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v0, "AppLovinSdk:WebServer"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/bd;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v5, "AdWebServer"

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebServer"

    const-string v1, "Staring AppLovin web server..."

    invoke-interface {v0, v5, v1}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->z:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/bd;->c:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/bd;->c:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/bd;->d:Z

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/bd;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for a client on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bd;->c:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/bd;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AdWebServer"

    const-string v4, "Client accepted, rendering request..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/sdk/ag;

    iget-object v4, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v3, v1, v4}, Lcom/applovin/impl/sdk/ag;-><init>(Ljava/net/Socket;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    sget-object v1, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/bd;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/bd;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AdWebServer"

    const-string v3, "Web server caught IO error"

    invoke-interface {v2, v5, v3, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "AdWebServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a server must be already running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "AdWebServer"

    const-string v2, "Unable to create server socket"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method
