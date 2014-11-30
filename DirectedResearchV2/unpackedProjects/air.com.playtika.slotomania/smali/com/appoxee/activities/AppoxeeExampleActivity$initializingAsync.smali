.class public Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;
.super Landroid/os/AsyncTask;
.source "AppoxeeExampleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/AppoxeeExampleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "initializingAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;


# direct methods
.method public constructor <init>(Lcom/appoxee/activities/AppoxeeExampleActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;)Lcom/appoxee/activities/AppoxeeExampleActivity;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    invoke-virtual {v0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Lcom/appoxee/asyncs/Setup;

    invoke-direct {v0}, Lcom/appoxee/asyncs/Setup;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appoxee/asyncs/Setup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    invoke-virtual {v1}, Lcom/appoxee/activities/AppoxeeExampleActivity;->updateMsgBadge()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 172
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;

    invoke-direct {v1, p0, v0}, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$1;-><init>(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;Landroid/os/Handler;)V

    .line 178
    const-wide/16 v2, 0x1388

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->this$0:Lcom/appoxee/activities/AppoxeeExampleActivity;

    new-instance v2, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$2;

    invoke-direct {v2, p0}, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync$2;-><init>(Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;)V

    invoke-static {v1, v2}, Lcom/appoxee/activities/AppoxeeExampleActivity;->access$0(Lcom/appoxee/activities/AppoxeeExampleActivity;Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
