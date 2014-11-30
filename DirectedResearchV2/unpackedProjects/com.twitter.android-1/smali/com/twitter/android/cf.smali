.class final Lcom/twitter/android/cf;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/UsersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/UsersFragment;Lcom/twitter/android/bv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/cf;-><init>(Lcom/twitter/android/UsersFragment;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/fm;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/android/fm;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Lcom/twitter/android/cf;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0065

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p8}, Lcom/twitter/android/cf;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0, p5}, Lcom/twitter/android/cf;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0064

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p8}, Lcom/twitter/android/cf;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v0, 0x191

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00bd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_1

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/UsersFragment;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/cf;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p8}, Lcom/twitter/android/cf;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b005c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b005a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b005d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
