.class Lcom/applovin/impl/adview/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/applovin/impl/adview/AdViewControllerJsInterface;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    iput-object p2, p0, Lcom/applovin/impl/adview/n;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$000(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
