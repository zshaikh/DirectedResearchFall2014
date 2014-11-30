.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x1

    .line 780
    move-object v1, p1

    .line 781
    .local v1, "mPlayer":Landroid/media/MediaPlayer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView What Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 783
    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "dialogBody":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 799
    :goto_0
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccured:Z
    invoke-static {v2, v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2102(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 800
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    new-instance v3, Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v4}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    .line 802
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    sget-object v3, Lcom/nativex/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v3}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 803
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 804
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    const-string v3, "Ok"

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    new-instance v3, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;

    invoke-direct {v3, p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;Landroid/media/MediaPlayer;)V

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setCancelable(Z)V

    .line 815
    iget-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->show()V

    .line 817
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 819
    return v5

    .line 787
    :sswitch_0
    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 788
    const-string v2, "CustomVideoView: MediaPlayer server died error."

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :sswitch_1
    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->VIDEO_UKNOWN_ERROR:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView: MediaPlayer unknown error. Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
