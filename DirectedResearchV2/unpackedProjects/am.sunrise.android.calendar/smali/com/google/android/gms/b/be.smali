.class Lcom/google/android/gms/b/be;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/be;->a:Lcom/google/android/gms/b/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/be;-><init>(Lcom/google/android/gms/b/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/be;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->d(Lcom/google/android/gms/b/aw;)V

    return-void
.end method
