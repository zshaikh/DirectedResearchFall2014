.class Lcom/appoxee/activities/AppoxeeExampleActivity$1;
.super Ljava/lang/Object;
.source "AppoxeeExampleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/AppoxeeExampleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/AppoxeeExampleActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$1;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    iput-object p2, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$1;->val$handler:Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/appoxee/inbox/Update;

    invoke-direct {v0}, Lcom/appoxee/inbox/Update;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Regular"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    new-instance v0, Lcom/appoxee/inbox/Update;

    invoke-direct {v0}, Lcom/appoxee/inbox/Update;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Reg"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$1;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    invoke-virtual {v0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->updateMsgBadge()V

    .line 69
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
