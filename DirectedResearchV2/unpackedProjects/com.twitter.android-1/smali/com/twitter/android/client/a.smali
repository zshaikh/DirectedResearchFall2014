.class final Lcom/twitter/android/client/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:J

.field private synthetic d:Lcom/twitter/android/client/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/e;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/a;->d:Lcom/twitter/android/client/e;

    iput-object p2, p0, Lcom/twitter/android/client/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/client/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/twitter/android/client/a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/a;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/twitter/android/client/a;->c:J

    invoke-static {v1, v2}, Lcom/twitter/android/provider/al;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/twitter/android/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/q;->d(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/twitter/android/client/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/q;->c(Ljava/lang/String;)I

    :cond_0
    return-void
.end method
