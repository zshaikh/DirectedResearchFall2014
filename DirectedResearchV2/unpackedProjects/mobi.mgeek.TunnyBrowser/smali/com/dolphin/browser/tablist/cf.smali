.class Lcom/dolphin/browser/tablist/cf;
.super Ljava/lang/Object;
.source "TabListView.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/bw;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/TabListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/TabListView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListView;->a(Lcom/dolphin/browser/tablist/TabListView;)Lcom/dolphin/browser/tablist/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListView;->a(Lcom/dolphin/browser/tablist/TabListView;)Lcom/dolphin/browser/tablist/ca;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/ca;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Lcom/dolphin/browser/tablist/TabListView;Lcom/dolphin/browser/tablist/bz;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0, p1}, Lcom/dolphin/browser/tablist/TabListView;->b(Lcom/dolphin/browser/tablist/TabListView;Lcom/dolphin/browser/tablist/bz;)V

    .line 128
    return-void
.end method

.method public b(Lcom/dolphin/browser/tablist/bz;)V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dolphin/browser/tablist/cg;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListView;->b(Lcom/dolphin/browser/tablist/TabListView;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListView;->c(Lcom/dolphin/browser/tablist/TabListView;)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cf;->a:Lcom/dolphin/browser/tablist/TabListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListView;->d(Lcom/dolphin/browser/tablist/TabListView;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
