.class final Lcom/twitter/android/cw;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchQueriesFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchQueriesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/SearchQueriesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/SearchQueriesFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/SearchQueriesFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/SearchQueriesFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchQueriesFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/SearchQueriesFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchQueriesFragment;->c(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/twitter/android/cw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/twitter/android/cw;->a(Ljava/lang/String;)V

    return-void
.end method
