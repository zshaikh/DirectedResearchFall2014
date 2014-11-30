.class Lcom/appsponsor/appsponsorsdk/PopupAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;


# direct methods
.method constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$2;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$2;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAd;->unlockOrientation()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->access$300(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    return-void
.end method
