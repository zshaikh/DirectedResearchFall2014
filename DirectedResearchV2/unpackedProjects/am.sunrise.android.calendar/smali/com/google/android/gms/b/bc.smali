.class Lcom/google/android/gms/b/bc;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bc;->a:Lcom/google/android/gms/b/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/bc;-><init>(Lcom/google/android/gms/b/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/bc;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->b(Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/b/ba;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/ba;->a:Lcom/google/android/gms/b/ba;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/bc;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->c(Lcom/google/android/gms/b/aw;)V

    :cond_0
    return-void
.end method
