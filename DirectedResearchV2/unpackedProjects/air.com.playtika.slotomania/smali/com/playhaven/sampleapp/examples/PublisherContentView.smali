.class public Lcom/playhaven/sampleapp/examples/PublisherContentView;
.super Lcom/playhaven/sampleapp/examples/ExampleView;
.source "PublisherContentView.java"

# interfaces
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;


# instance fields
.field private mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

.field private placementTxt:Landroid/widget/EditText;

.field private preloaded:Z

.field private request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->preloaded:Z

    .line 26
    return-void
.end method

.method private createPreloadButton()Landroid/widget/Button;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 79
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "sendBtn":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3e99999a

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v1, Lcom/playhaven/sampleapp/examples/PublisherContentView$1;

    invoke-direct {v1, p0}, Lcom/playhaven/sampleapp/examples/PublisherContentView$1;-><init>(Lcom/playhaven/sampleapp/examples/PublisherContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 91
    const-string v1, "preloadBtn"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    return-object v0
.end method


# virtual methods
.method protected addTopbarItems(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "topbar"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, -0x2

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    .line 66
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f666666

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 68
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    const-string v2, "placementTxt"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/PublisherContentView;->createPreloadButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-super {p0, p1}, Lcom/playhaven/sampleapp/examples/ExampleView;->addTopbarItems(Landroid/widget/LinearLayout;)V

    .line 76
    return-void
.end method

.method public contentDidFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 203
    const-string v1, " Content failed with error; %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "message":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "type"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .prologue
    .line 190
    const-string v1, "User dismissed request: %s of type: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "message":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 184
    const-string v1, "Displayed Content: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "message":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v1, " Failed with error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "message":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/playhaven/sampleapp/examples/ExampleView;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    invoke-direct {v0, p0}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    .line 45
    const-string v0, "Content Request"

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/PublisherContentView;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->unbindService()V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->onResume()V

    .line 151
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->didDismissContentWithin(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "Resumed after displaying content"

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "Resumed PHPublisherView regularly"

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->onStart()V

    .line 146
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->bindPurchaseObserver()V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->onStop()V

    .line 139
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->unbindPurchaseObserver()V

    .line 140
    return-void
.end method

.method public preloadRequest()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 98
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    .line 100
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->preload()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->preloaded:Z

    .line 103
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 168
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 164
    return-void
.end method

.method public shouldMakePurchase(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V
    .locals 1
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "purchase"    # Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->mPurchaseHelper:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    invoke-virtual {v0, p2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->makePurchase(Lcom/playhaven/src/publishersdk/content/PHPurchase;)V

    .line 51
    return-void
.end method

.method public startRequest()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->startRequest()V

    .line 110
    new-instance v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    .local v0, "notifyView":Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
    const v1, -0xfdf501

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->refresh()V

    .line 114
    const-string v1, "Notification View: "

    invoke-super {p0, v1, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;Landroid/view/View;)V

    .line 117
    iget-boolean v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->preloaded:Z

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    iget-object v2, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->placementTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 120
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-virtual {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->send()V

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView;->preloaded:Z

    .line 126
    return-void
.end method

.method public unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V
    .locals 0
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "reward"    # Lcom/playhaven/src/publishersdk/content/PHReward;

    .prologue
    .line 56
    return-void
.end method

.method public willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 178
    const-string v1, "Recieved content: %s. \n-------\npreparing for display"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "message":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .prologue
    .line 172
    const-string v0, "Will get content..."

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 173
    const-string v0, "Starting content request..."

    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 174
    return-void
.end method
