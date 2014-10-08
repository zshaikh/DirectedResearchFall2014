.class Lcom/inmobi/activity/InMobiAdActivity$4;
.super Ljava/lang/Thread;
.source "InMobiAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/activity/InMobiAdActivity;->onGetInAd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/activity/InMobiAdActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/activity/InMobiAdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/activity/InMobiAdActivity$4;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$4;->a:Lcom/inmobi/activity/InMobiAdActivity;

    invoke-static {v0}, Lcom/inmobi/activity/InMobiAdActivity;->b(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/activity/InMobiAdActivity$4;->a:Lcom/inmobi/activity/InMobiAdActivity;

    invoke-static {v1}, Lcom/inmobi/activity/InMobiAdActivity;->c(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 95
    return-void
.end method
