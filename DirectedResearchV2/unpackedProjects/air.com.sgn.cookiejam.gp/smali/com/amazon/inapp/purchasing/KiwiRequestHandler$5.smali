.class Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;->this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiResponseReceivedCommandTask;

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;->val$requestId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/inapp/purchasing/KiwiResponseReceivedCommandTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method
