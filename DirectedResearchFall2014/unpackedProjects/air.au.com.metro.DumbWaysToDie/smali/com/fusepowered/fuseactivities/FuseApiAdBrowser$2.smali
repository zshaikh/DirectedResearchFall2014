.class Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->showAdButtons(I)V
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

    iput-object p1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/fusepowered/util/ActivityResults;->AD_DISPLAYED:Lcom/fusepowered/util/ActivityResults;

    invoke-virtual {v1}, Lcom/fusepowered/util/ActivityResults;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;->this$0:Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    invoke-virtual {v0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->finish()V

    return-void
.end method
