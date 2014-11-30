.class Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;


# direct methods
.method constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionFinished(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;I)Z
    .locals 4

    const-string v0, "PopupAdActivity"

    const-string v1, "onSessionFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    iget-object v0, v0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finishPopup()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$300(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    iget-object v1, v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    iget-object v3, v3, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$400(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    iget-object v3, v3, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$200(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;->this$1:Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    iget-object v1, v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSessionStarted()V
    .locals 2

    const-string v0, "PopupAdActivity"

    const-string v1, "onSessionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
