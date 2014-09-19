.class Lcom/applovin/impl/sdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ao;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/ao;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/al;

    iget-object v0, v0, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandeled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
