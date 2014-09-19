.class Lcom/applovin/impl/adview/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/aj;->c:Lcom/applovin/impl/adview/ah;

    iput-boolean p2, p0, Lcom/applovin/impl/adview/aj;->a:Z

    iput-boolean p3, p0, Lcom/applovin/impl/adview/aj;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/aj;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/aj;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->c:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->c:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->b(Lcom/applovin/impl/adview/ah;)V

    goto :goto_0
.end method
