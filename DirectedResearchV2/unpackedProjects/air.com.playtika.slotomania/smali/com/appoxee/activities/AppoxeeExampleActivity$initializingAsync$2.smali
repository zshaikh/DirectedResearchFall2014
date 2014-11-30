.class Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$2;
.super Landroid/content/BroadcastReceiver;
.source "AppoxeeExampleActivity.java"


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


# direct methods
.method constructor <init>(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$2;->this$1:Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;

    .line 180
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v4, "numberOfMessage"

    .line 184
    const-string v2, "numberOfMessage"

    const/4 v2, 0x0

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v0, v2

    .line 185
    .local v0, "newMessages":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfMessage"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 192
    return-void
.end method
