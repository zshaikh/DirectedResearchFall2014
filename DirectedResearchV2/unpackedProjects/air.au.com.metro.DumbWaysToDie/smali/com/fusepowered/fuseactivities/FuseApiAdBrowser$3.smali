.class Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->handleOnExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    iget-object v0, v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "AdBrowser"

    const-string v1, "Got an exit event for an ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    invoke-virtual {v0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->finish()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
