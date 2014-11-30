.class Lcom/appoxee/activities/Inbox$1;
.super Landroid/content/BroadcastReceiver;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$1;->this$0:Lcom/appoxee/activities/Inbox;

    .line 524
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/appoxee/activities/Inbox$1;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v1}, Lcom/appoxee/activities/Inbox;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appoxee/activities/Inbox$1;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
