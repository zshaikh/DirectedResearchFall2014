.class Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;
.super Ljava/lang/Object;
.source "AppoxeeExampleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;->this$1:Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;

    iput-object p2, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;->val$handler:Landroid/os/Handler;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/appoxee/inbox/Update;

    invoke-direct {v0}, Lcom/appoxee/inbox/Update;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Regular"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;->this$1:Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;

    # getter for: Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;
    invoke-static {v0}, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->access$2(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;)Lcom/appoxee/activities/AppoxeeExampleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->updateMsgBadge()V

    .line 176
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method
