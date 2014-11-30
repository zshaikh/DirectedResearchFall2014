.class final Lcom/twitter/android/cb;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/ListsFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ListsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ListsFragment;Lcom/twitter/android/dg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/cb;-><init>(Lcom/twitter/android/ListsFragment;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListsFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    iget-object v1, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    iget v1, v1, Lcom/twitter/android/ListsFragment;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez p7, :cond_1

    iget-object v1, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    iget-object v2, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    iget-object v2, v2, Lcom/twitter/android/ListsFragment;->j:Lcom/twitter/android/client/e;

    iget-object v3, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    iget-wide v3, v3, Lcom/twitter/android/ListsFragment;->o:J

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v6, v0}, Lcom/twitter/android/ListsFragment;->b(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/android/client/e;->b(JII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ListsFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cb;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
