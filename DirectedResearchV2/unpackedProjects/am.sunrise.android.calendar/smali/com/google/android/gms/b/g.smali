.class public Lcom/google/android/gms/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/b/l;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/b/s;

.field private final d:Lcom/google/android/gms/b/ai;

.field private final e:Lcom/google/android/gms/b/t;

.field private final f:Lcom/google/android/gms/b/ah;

.field private g:Lcom/google/android/gms/b/i;

.field private h:Lcom/google/android/gms/b/x;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/b/l;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/b/ai;->a()Lcom/google/android/gms/b/ai;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/b/t;->a()Lcom/google/android/gms/b/t;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/b/ah;->a()Lcom/google/android/gms/b/ah;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/b/bq;

    const-string v0, "tracking"

    invoke-direct {v6, v0}, Lcom/google/android/gms/b/bq;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/l;Lcom/google/android/gms/b/ai;Lcom/google/android/gms/b/t;Lcom/google/android/gms/b/ah;Lcom/google/android/gms/b/s;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/b/l;Lcom/google/android/gms/b/ai;Lcom/google/android/gms/b/t;Lcom/google/android/gms/b/ah;Lcom/google/android/gms/b/s;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/g;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/b/g;->a:Lcom/google/android/gms/b/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/g;->b:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/g;->b:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/b/g;->d:Lcom/google/android/gms/b/ai;

    iput-object p4, p0, Lcom/google/android/gms/b/g;->e:Lcom/google/android/gms/b/t;

    iput-object p5, p0, Lcom/google/android/gms/b/g;->f:Lcom/google/android/gms/b/ah;

    iput-object p6, p0, Lcom/google/android/gms/b/g;->c:Lcom/google/android/gms/b/s;

    new-instance v0, Lcom/google/android/gms/b/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/i;-><init>(Lcom/google/android/gms/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/b/g;->g:Lcom/google/android/gms/b/i;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/g;->g:Lcom/google/android/gms/b/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/g;->h:Lcom/google/android/gms/b/x;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->k:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    iget-object v0, p0, Lcom/google/android/gms/b/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->l:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/b/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    :cond_1
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/b/g;->g:Lcom/google/android/gms/b/i;

    invoke-virtual {v2}, Lcom/google/android/gms/b/i;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "&sc"

    const-string v3, "start"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/b/g;->c:Lcom/google/android/gms/b/s;

    invoke-interface {v0}, Lcom/google/android/gms/b/s;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/g;->a:Lcom/google/android/gms/b/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/l;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/g;->g:Lcom/google/android/gms/b/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/i;->a(Z)V

    return-void
.end method
