.class public final Lcom/twitter/android/client/Session;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/twitter/android/client/Session$LoginStatus;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/twitter/android/network/c;

.field private f:Lcom/twitter/android/api/c;

.field private g:Lcom/twitter/android/api/f;

.field private h:Lcom/twitter/android/api/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twitter/android/util/q;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/Session;->b:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    iput-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    iput-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/Session;->c:Z

    iput-object v1, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/c;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/c;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/o;

    return-void
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/c;

    return-void
.end method

.method public final a(Lcom/twitter/android/api/f;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->g:Lcom/twitter/android/api/f;

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/api/o;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/o;

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session$LoginStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-void
.end method

.method public final a(Lcom/twitter/android/network/c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/android/client/Session;->c:Z

    return-void
.end method

.method public final b()Lcom/twitter/android/client/Session$LoginStatus;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/Session$LoginStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/twitter/android/api/c;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/c;

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/c;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/c;

    iget-wide v0, v0, Lcom/twitter/android/api/c;->a:J

    goto :goto_0
.end method

.method public final h()Lcom/twitter/android/network/c;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/c;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/client/Session;->c:Z

    return v0
.end method

.method public final j()Lcom/twitter/android/api/o;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/o;

    return-object v0
.end method
