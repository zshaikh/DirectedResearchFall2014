.class final Lcom/twitter/android/bj;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/fo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bj;-><init>(Lcom/twitter/android/ProfileActivity;)V

    return-void
.end method

.method private varargs a([Landroid/net/Uri;)Ljava/lang/Long;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, p1, v6

    const-string v2, "com.android.contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "vnd.android.cursor.item/vnd.twitter.profile"

    iget-object v5, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v5}, Lcom/twitter/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/twitter/android/bj;->a([Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    const v1, 0x7f0b0056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twitter/android/ProfileActivity;->a:J

    iget-object v0, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->a()V

    goto :goto_0
.end method
