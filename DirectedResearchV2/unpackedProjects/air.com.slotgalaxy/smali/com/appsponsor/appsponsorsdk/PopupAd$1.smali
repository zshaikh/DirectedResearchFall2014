.class Lcom/appsponsor/appsponsorsdk/PopupAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAd;->makeRequest()V
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

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$1;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAd;->setImageCache(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/appsponsor/appsponsorsdk/PopupAd;->access$100(Lcom/appsponsor/appsponsorsdk/PopupAd;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
