.class Lcom/appoxee/activities/Inbox$6;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/Inbox;->inboxInit()V
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
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$6;->this$0:Lcom/appoxee/activities/Inbox;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/appoxee/activities/Inbox$GetDataTask;

    iget-object v1, p0, Lcom/appoxee/activities/Inbox$6;->this$0:Lcom/appoxee/activities/Inbox;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appoxee/activities/Inbox$GetDataTask;-><init>(Lcom/appoxee/activities/Inbox;Lcom/appoxee/activities/Inbox$GetDataTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appoxee/activities/Inbox$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method
