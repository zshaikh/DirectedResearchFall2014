.class Lcom/dolphin/browser/pagedrop/activity/e;
.super Ljava/lang/Object;
.source "PageDropChatActivity.java"

# interfaces
.implements Lcom/dolphin/browser/pagedrop/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/e;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xa

    .line 704
    sparse-switch p1, :sswitch_data_0

    .line 721
    :goto_0
    return-void

    .line 711
    :sswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/e;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/activity/i;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/pagedrop/activity/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 716
    :sswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/e;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/activity/i;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/pagedrop/activity/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 704
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x21 -> :sswitch_1
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
