.class final Lcom/twitter/android/cd;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/HomeTabActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    move v4, v1

    :goto_3
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    iget-object v5, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v5, v2, v0}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    iget-object v0, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v1, v3}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    iget-object v0, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v7, v4}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    iget-object v0, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v6, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3
.end method
