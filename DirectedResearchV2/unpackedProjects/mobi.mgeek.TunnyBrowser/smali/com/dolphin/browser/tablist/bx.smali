.class public Lcom/dolphin/browser/tablist/bx;
.super Ljava/lang/Object;
.source "TabListContainerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/dolphin/browser/tablist/bz;)Lcom/dolphin/browser/tablist/g;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/tablist/by;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/tablist/ac;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ac;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/tablist/ay;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ay;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/tablist/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
