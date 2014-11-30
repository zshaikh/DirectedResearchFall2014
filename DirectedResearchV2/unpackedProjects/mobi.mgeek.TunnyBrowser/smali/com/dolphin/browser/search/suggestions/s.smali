.class public Lcom/dolphin/browser/search/suggestions/s;
.super Ljava/lang/Object;
.source "SearchTabContainerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;
    .locals 1

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 23
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerHistory;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerHistory;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 21
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
