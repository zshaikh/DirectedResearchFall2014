.class Lcom/dolphin/browser/menu/n;
.super Ljava/lang/Object;
.source "ListMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/l;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/dolphin/browser/menu/n;->a:Lcom/dolphin/browser/menu/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 483
    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/menu/v;->a(IZ)V

    .line 502
    return-void

    .line 486
    :pswitch_1
    new-instance v1, Lcom/dolphin/browser/c/d;

    iget-object v2, p0, Lcom/dolphin/browser/menu/n;->a:Lcom/dolphin/browser/menu/l;

    invoke-static {v2}, Lcom/dolphin/browser/menu/l;->a(Lcom/dolphin/browser/menu/l;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/d;->a()Z

    goto :goto_0

    .line 493
    :pswitch_2
    new-instance v1, Lcom/dolphin/browser/c/n;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/dolphin/browser/c/n;-><init>(Z)V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/n;->a()Z

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
