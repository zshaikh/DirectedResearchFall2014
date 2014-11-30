.class public Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;
.super Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.source "ProfilesReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Lcom/amazon/ags/client/BaseReplyMessengerFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "PROFILES"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROFILES_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    .local p0, "this":Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;, "Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;, "Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory<TT;>;"
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 37
    .local v2, "responseBundle":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 38
    .local v3, "responseCode":I
    sget-object v4, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing incoming service response message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 54
    sget-object v4, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value received for request type parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Received an invalid value for request type parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :pswitch_0
    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    .line 44
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 45
    .local v0, "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;
    move-object v4, v1

    .line 52
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;->unbundleRequestPlayerProfileResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public unbundleRequestPlayerProfileResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;, "Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory<TT;>;"
    const-string v2, "ALIAS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "alias":Ljava/lang/String;
    new-instance v1, Lcom/amazon/ags/client/profiles/PlayerImpl;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/profiles/PlayerImpl;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "player":Lcom/amazon/ags/api/profiles/Player;
    new-instance v2, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;

    invoke-direct {v2, v1, p2}, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;-><init>(Lcom/amazon/ags/api/profiles/Player;I)V

    return-object v2
.end method
