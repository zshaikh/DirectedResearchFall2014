.class Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;
.super Ljava/lang/Object;
.source "AchievementsServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->resetAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

.field final synthetic val$achievementId:Ljava/lang/String;

.field final synthetic val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iput-object p4, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    iput-object p5, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$achievementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->getReplyHandleMessenger(Lcom/amazon/ags/client/GCResponseHandleImpl;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 224
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iget-object v3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$achievementId:Ljava/lang/String;

    # invokes: Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithAchievement(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->access$300(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 226
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    # getter for: Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;
    invoke-static {v1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->access$100(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    new-instance v2, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v3, 0x14

    sget-object v4, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v1, v2}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method
