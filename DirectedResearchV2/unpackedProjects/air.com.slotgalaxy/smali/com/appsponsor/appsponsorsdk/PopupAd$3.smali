.class Lcom/appsponsor/appsponsorsdk/PopupAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAd;->cacheAdImage(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$3;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$3;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAd;->setImageCache(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/appsponsor/appsponsorsdk/PopupAd;->access$100(Lcom/appsponsor/appsponsorsdk/PopupAd;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$3;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->access$400(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    :cond_0
    return-void
.end method