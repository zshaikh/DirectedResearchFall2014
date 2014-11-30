.class Lcom/dolphin/browser/pagedrop/activity/f;
.super Ljava/lang/Object;
.source "PageDropChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->c:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    iput-object p2, p0, Lcom/dolphin/browser/pagedrop/activity/f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/dolphin/browser/pagedrop/activity/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 834
    packed-switch p2, :pswitch_data_0

    .line 856
    :goto_0
    return-void

    .line 836
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/f;->c:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    const-string v1, "clk"

    const-string v2, "openinbackground"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :pswitch_1
    const/4 v0, 0x0

    .line 846
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->b:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->b:I

    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 847
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/f;->c:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/a/c;)Z

    .line 849
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/f;->c:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    const-string v1, "clk"

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
