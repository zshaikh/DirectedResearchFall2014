.class Lcom/applovin/impl/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    iput-object p2, p0, Lcom/applovin/impl/adview/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/adview/a;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->handleCommandInvocation(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
