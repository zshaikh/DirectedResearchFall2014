.class Lcom/bitrhyms/tapjoylib/ShowOffers$1;
.super Ljava/lang/Object;
.source "ShowOffers.java"

# interfaces
.implements Lcom/tapjoy/TapjoyOffersNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhyms/tapjoylib/ShowOffers;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhyms/tapjoylib/ShowOffers;


# direct methods
.method constructor <init>(Lcom/bitrhyms/tapjoylib/ShowOffers;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhyms/tapjoylib/ShowOffers$1;->this$0:Lcom/bitrhyms/tapjoylib/ShowOffers;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffersResponse()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "TapjoyConnect"

    const-string v1, " getOffersResponse "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/bitrhyms/tapjoylib/ShowOffers$1;->this$0:Lcom/bitrhyms/tapjoylib/ShowOffers;

    # getter for: Lcom/bitrhyms/tapjoylib/ShowOffers;->mContext:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhyms/tapjoylib/ShowOffers;->access$0(Lcom/bitrhyms/tapjoylib/ShowOffers;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public getOffersResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "TapjoyConnect"

    const-string v1, " getOffersResponseFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/bitrhyms/tapjoylib/ShowOffers$1;->this$0:Lcom/bitrhyms/tapjoylib/ShowOffers;

    # getter for: Lcom/bitrhyms/tapjoylib/ShowOffers;->mContext:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhyms/tapjoylib/ShowOffers;->access$0(Lcom/bitrhyms/tapjoylib/ShowOffers;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
