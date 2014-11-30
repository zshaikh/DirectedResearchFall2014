.class Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;


# direct methods
.method constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionFinished(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;I)Z
    .locals 4

    const-string v0, "PopupAdActivity"

    const-string v1, "onSessionFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finishPopup()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$300(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    sget-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$400(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$200(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSessionStarted()V
    .locals 5

    const-string v0, "PopupAdActivity"

    const-string v1, "onSessionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->winUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$100(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;
    invoke-static {v4}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$200(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
