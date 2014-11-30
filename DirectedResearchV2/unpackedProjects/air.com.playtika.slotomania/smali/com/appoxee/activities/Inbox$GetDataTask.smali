.class Lcom/appoxee/activities/Inbox$GetDataTask;
.super Landroid/os/AsyncTask;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method private constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$GetDataTask;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appoxee/activities/Inbox;Lcom/appoxee/activities/Inbox$GetDataTask;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/appoxee/activities/Inbox$GetDataTask;-><init>(Lcom/appoxee/activities/Inbox;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/Inbox$GetDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 192
    new-instance v0, Lcom/appoxee/inbox/Update;

    invoke-direct {v0}, Lcom/appoxee/inbox/Update;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Regular"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/Inbox$GetDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$GetDataTask;->this$0:Lcom/appoxee/activities/Inbox;

    # getter for: Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;
    invoke-static {v0}, Lcom/appoxee/activities/Inbox;->access$4(Lcom/appoxee/activities/Inbox;)Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$GetDataTask;->this$0:Lcom/appoxee/activities/Inbox;

    # getter for: Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;
    invoke-static {v0}, Lcom/appoxee/activities/Inbox;->access$5(Lcom/appoxee/activities/Inbox;)Lcom/appoxee/widgets/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->onRefreshComplete()V

    .line 204
    return-void
.end method
