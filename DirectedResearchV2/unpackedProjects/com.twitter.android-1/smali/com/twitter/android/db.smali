.class final Lcom/twitter/android/db;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/fu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/db;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v1

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeActivity;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->b()V

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const-string v1, "home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;I)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    iput-boolean v2, v0, Lcom/twitter/android/HomeTabActivity;->e:Z

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    iput-boolean v2, v0, Lcom/twitter/android/HomeTabActivity;->f:Z

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V
    .locals 3

    const/4 v2, 0x1

    if-nez p5, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-nez v0, :cond_0

    if-lez p10, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    if-lez p5, :cond_1

    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/twitter/android/HomeTabActivity;->d:Z

    const/16 v0, 0xa

    if-lt p5, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    if-lez p9, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    if-lez p9, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/db;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_0
    return-void
.end method
