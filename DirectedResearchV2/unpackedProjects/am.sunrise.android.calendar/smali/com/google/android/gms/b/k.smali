.class Lcom/google/android/gms/b/k;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/i;Lcom/google/android/gms/b/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/k;-><init>(Lcom/google/android/gms/b/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/i;->a(Lcom/google/android/gms/b/i;Z)Z

    return-void
.end method
