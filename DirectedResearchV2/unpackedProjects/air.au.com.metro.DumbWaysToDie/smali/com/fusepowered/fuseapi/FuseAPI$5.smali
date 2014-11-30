.class final Lcom/fusepowered/fuseapi/FuseAPI$5;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/fusepowered/util/Message;

.field final synthetic val$next:I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/Message;I)V
    .locals 0

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    iput p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$next:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x1

    .line 2218
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2219
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    # invokes: Lcom/fusepowered/fuseapi/FuseAPI;->notificationView(I)V
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200(I)V

    .line 2220
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    # invokes: Lcom/fusepowered/fuseapi/FuseAPI;->notificationClick(I)V
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$300(I)V

    .line 2221
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2223
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2224
    .local v1, "urlToGo":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2227
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v0, "url":Ljava/net/URI;
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/fusepowered/fuseapi/FuseAPI;->openWebPage(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$400(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    .end local v0    # "url":Ljava/net/URI;
    .end local v1    # "urlToGo":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v2, v4}, Lcom/fusepowered/util/Message;->setClicked(Z)V

    .line 2238
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v2, :cond_1

    .line 2239
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iget-object v3, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v3}, Lcom/fusepowered/util/Message;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/util/FuseCallback;->notificationAction(Ljava/lang/String;)V

    .line 2241
    :cond_1
    iget v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$next:I

    # invokes: Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->access$500(I)V

    .line 2242
    return-void

    .line 2230
    .restart local v1    # "urlToGo":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
