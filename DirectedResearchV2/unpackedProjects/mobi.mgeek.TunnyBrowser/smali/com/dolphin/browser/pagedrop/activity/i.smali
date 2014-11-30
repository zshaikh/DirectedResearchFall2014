.class public final Lcom/dolphin/browser/pagedrop/activity/i;
.super Landroid/os/Handler;
.source "PageDropChatActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/i;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :pswitch_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(I)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/i;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/i;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(I)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/i;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/i;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
