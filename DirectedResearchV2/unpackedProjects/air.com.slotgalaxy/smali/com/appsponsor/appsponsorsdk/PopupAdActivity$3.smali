.class Lcom/appsponsor/appsponsorsdk/PopupAdActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;


# direct methods
.method constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$3;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->didCloseInterstitial()V

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$3;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finishPopup()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$300(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    return-void
.end method
