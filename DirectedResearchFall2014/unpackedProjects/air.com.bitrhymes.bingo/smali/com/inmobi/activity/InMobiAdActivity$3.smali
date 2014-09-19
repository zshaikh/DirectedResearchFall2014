.class Lcom/inmobi/activity/InMobiAdActivity$3;
.super Ljava/lang/Thread;
.source "InMobiAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/activity/InMobiAdActivity;->onRefreshAd(Landroid/view/View;)V
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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/activity/InMobiAdActivity$3;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$3;->a:Lcom/inmobi/activity/InMobiAdActivity;

    invoke-static {v0}, Lcom/inmobi/activity/InMobiAdActivity;->a(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 86
    return-void
.end method
