.class final Lcom/twitter/android/cr;
.super Lcom/twitter/android/dl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/twitter/android/dl;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/dl;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    check-cast p1, Lcom/twitter/android/widget/UserView;

    invoke-interface {p3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conn_names"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v2, 0x7f0b00ed

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v6

    add-int/lit8 v0, v1, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0b00eb

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0b00ec

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
