.class Lcom/appoxee/activities/InboxMessage$6;
.super Landroid/os/AsyncTask;
.source "InboxMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/InboxMessage;->markMessageAsReadWrap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/appoxee/activities/InboxMessage;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$6;->this$0:Lcom/appoxee/activities/InboxMessage;

    .line 316
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/InboxMessage$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$6;->this$0:Lcom/appoxee/activities/InboxMessage;

    # invokes: Lcom/appoxee/activities/InboxMessage;->markMessageAsRead()V
    invoke-static {v2}, Lcom/appoxee/activities/InboxMessage;->access$7(Lcom/appoxee/activities/InboxMessage;)V

    .line 323
    const-string v1, "notification"

    .line 324
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$6;->this$0:Lcom/appoxee/activities/InboxMessage;

    invoke-virtual {v2, v1}, Lcom/appoxee/activities/InboxMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 325
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$6;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v2}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 327
    const/4 v2, 0x0

    return-object v2
.end method
