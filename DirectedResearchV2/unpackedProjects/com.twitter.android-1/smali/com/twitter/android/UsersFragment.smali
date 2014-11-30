.class public Lcom/twitter/android/UsersFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/dd;
.implements Lcom/twitter/android/widget/l;


# instance fields
.field a:J

.field b:Lcom/twitter/android/api/PromotedContent;

.field c:J

.field d:Ljava/util/ArrayList;

.field e:Lcom/twitter/android/FriendshipCache;

.field f:Lcom/twitter/android/fm;

.field g:Ljava/lang/String;

.field private h:Ljava/util/HashSet;

.field private final r:Ljava/util/HashSet;

.field private s:Landroid/net/Uri;

.field private t:I

.field private u:[J

.field private v:Z

.field private w:Lcom/twitter/android/gu;

.field private x:[Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Ljava/util/HashSet;

    return-void
.end method

.method private b(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersFragment;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->d(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JII)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersFragment;->f(I)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/twitter/android/UsersFragment;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->d(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JII)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    iget-wide v2, p0, Lcom/twitter/android/UsersFragment;->o:J

    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->c:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->d(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->a(IJJI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    iget-wide v2, p0, Lcom/twitter/android/UsersFragment;->o:J

    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->c:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->d(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->a(IJJI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->d(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/twitter/android/client/e;->a(ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->i(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->u:[J

    iget v4, p0, Lcom/twitter/android/UsersFragment;->t:I

    iget-wide v5, p0, Lcom/twitter/android/UsersFragment;->c:J

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private d(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private i(I)I
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0b00b5

    const v5, 0x7f0b00b4

    const v4, 0x108009b

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/twitter/android/bv;

    invoke-direct {v1, p0}, Lcom/twitter/android/bv;-><init>(Lcom/twitter/android/UsersFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0060

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/android/bt;

    invoke-direct {v1, p0}, Lcom/twitter/android/bt;-><init>(Lcom/twitter/android/UsersFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0063

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x9

    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/twitter/android/UsersFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 13

    const/4 v4, 0x7

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v12, v0, :cond_8

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    invoke-interface {v0, v1}, Lcom/twitter/android/fm;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v6

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    packed-switch v6, :pswitch_data_0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_0
    const-string v0, "+1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x2b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lcom/twitter/android/UsersFragment;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    invoke-interface {v0, v1}, Lcom/twitter/android/fm;->a(I)V

    :cond_7
    invoke-virtual {p0, v11}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto/16 :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-ne v0, v4, :cond_a

    :cond_9
    invoke-direct {p0, v11}, Lcom/twitter/android/UsersFragment;->b(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/fm;->a(I)V

    :cond_b
    invoke-virtual {p0, v11}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt p3, v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    cmp-long v0, p4, v5

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/twitter/android/UsersFragment;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_3
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/UsersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/twitter/android/gu;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/gu;->a(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .locals 3

    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->c(J)V

    :goto_1
    return-void

    :pswitch_0
    iput-wide p2, p0, Lcom/twitter/android/UsersFragment;->a:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->h(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/e;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->b(J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/UsersFragment;->b(I)V

    return-void
.end method

.method protected final d_()V
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-ne v0, v1, :cond_1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->d_()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    sget-object v3, Lcom/twitter/android/provider/p;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LOWER(username) ASC"

    :goto_0
    const/4 v2, 0x0

    iget v4, p0, Lcom/twitter/android/UsersFragment;->t:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    sget-object v4, Lcom/twitter/android/provider/ak;->h:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    :cond_0
    move v11, v2

    move-object v2, v0

    move v0, v11

    :goto_1
    iput-object v3, p0, Lcom/twitter/android/UsersFragment;->x:[Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/UsersFragment;->y:Ljava/lang/String;

    const-string v2, "follow"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const v5, 0x7f02003e

    :goto_2
    const/16 v0, 0x9

    iget v2, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-ne v0, v2, :cond_5

    new-instance v0, Lcom/twitter/android/cr;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget v4, p0, Lcom/twitter/android/UsersFragment;->q:I

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    iget-object v7, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    const-string v8, "follow_all_title"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "follow_all_subtitle"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/cr;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/cr;->a(Lcom/twitter/android/dd;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/cr;->a(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/twitter/android/cf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cf;-><init>(Lcom/twitter/android/UsersFragment;Lcom/twitter/android/bv;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->k:Lcom/twitter/android/client/f;

    return-void

    :cond_2
    const-string v0, "_id ASC"

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/twitter/android/provider/ak;->f:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/twitter/android/provider/ak;->g:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/twitter/android/provider/ak;->e:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_1

    :pswitch_4
    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->c:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->o:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_3

    sget-object v4, Lcom/twitter/android/provider/ak;->c:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    :cond_3
    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->o:J

    iget-object v7, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v7}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-nez v4, :cond_0

    const v2, 0x7f02012c

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_5
    sget-object v4, Lcom/twitter/android/provider/ak;->j:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_6
    sget-object v4, Lcom/twitter/android/provider/ak;->b:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_7
    sget-object v4, Lcom/twitter/android/provider/ak;->i:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/twitter/android/provider/r;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/p;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_9
    sget-object v4, Lcom/twitter/android/provider/ak;->k:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_a
    sget-object v4, Lcom/twitter/android/provider/ak;->d:Landroid/net/Uri;

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_b
    sget-object v4, Lcom/twitter/android/provider/ak;->l:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_c
    sget-object v4, Lcom/twitter/android/provider/ak;->m:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lcom/twitter/android/dl;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget v4, p0, Lcom/twitter/android/UsersFragment;->q:I

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_5
    iget-object v7, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    const-string v8, "follow_all_title"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "follow_all_subtitle"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/dl;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/dl;->a(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    goto/16 :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    move v5, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    :cond_1
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/twitter/android/FriendshipCache;->b(JI)V

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070057
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    const-string v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/UsersFragment;->c:J

    const-string v1, "user_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    iput-object v1, p0, Lcom/twitter/android/UsersFragment;->u:[J

    :cond_0
    const-string v1, "onboarding"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/UsersFragment;->v:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    if-eqz p1, :cond_4

    const-string v0, "state_dialog_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/UsersFragment;->a:J

    const-string v0, "state_dialog_pc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->b:Lcom/twitter/android/api/PromotedContent;

    const-string v0, "state_checked_users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    const-string v0, "state_user_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->u:[J

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    :goto_0
    const-string v0, "state_search_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->g:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lcom/twitter/android/UsersFragment;->q:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->w:Lcom/twitter/android/gu;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/gu;->a(I)V

    :cond_2
    invoke-virtual {p0, v4, p0}, Lcom/twitter/android/UsersFragment;->a(ILcom/twitter/android/util/j;)V

    return-void

    :cond_3
    new-instance v0, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    goto :goto_0

    :cond_4
    const-string v1, "friendship_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "friendship_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    :goto_2
    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->h:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    goto :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->i:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :sswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->N:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aj:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_1

    :sswitch_3
    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->v:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->P:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->Y:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 11

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-ne v7, p1, :cond_0

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v10

    const-string v4, "mimetype"

    aput-object v4, v3, v7

    const-string v4, "data1 NOT NULL AND (mimetype=? OR mimetype=?)"

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v5, v10

    const-string v8, "vnd.android.cursor.item/email_v2"

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v6, "type=? AND tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v4, v6

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_owner_id"

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v6, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->x:[Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/UsersFragment;->y:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->u:[J

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->u:[J

    array-length v2, v1

    new-array v5, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "user_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " IN (?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v8, v1, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    move v0, v7

    :goto_2
    if-ge v0, v2, :cond_2

    const-string v4, ", ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    move-object v4, v6

    move-object v5, v6

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v6, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    move-object v4, v6

    goto :goto_1

    :cond_4
    move-object v4, v6

    move-object v5, v6

    goto :goto_1

    :sswitch_1
    const-string v6, "type=? AND tag=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->g:Ljava/lang/String;

    aput-object v0, v5, v7

    move-object v4, v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/UsersFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/UsersFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->s:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->f()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/twitter/android/UsersFragment;->b(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_user"

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_0

    const-string v0, "state_dialog_pc"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->b:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "state_checked_users"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->u:[J

    if-eqz v0, :cond_2

    const-string v0, "state_user_ids"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->u:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    const-string v0, "state_search_id"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/e;->b([J)Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-boolean v1, p0, Lcom/twitter/android/UsersFragment;->v:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->O:Lcom/twitter/android/service/ScribeEvent;

    array-length v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->Q:Lcom/twitter/android/service/ScribeEvent;

    array-length v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->R:Lcom/twitter/android/service/ScribeEvent;

    array-length v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/twitter/android/UsersFragment;->t:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->Z:Lcom/twitter/android/service/ScribeEvent;

    array-length v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_4
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, 0x3

    iget v3, p0, Lcom/twitter/android/UsersFragment;->t:I

    if-ne v0, v3, :cond_0

    const-string v0, "view_tweets"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03003b

    invoke-virtual {v0, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f070022

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0b0168

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Landroid/widget/ListView;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "query"

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "query"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "view_people"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    const-string v0, "browse_categories"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030008

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->p:Landroid/widget/ListView;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/SULActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "onboarding"

    iget-boolean v4, p0, Lcom/twitter/android/UsersFragment;->v:Z

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method
