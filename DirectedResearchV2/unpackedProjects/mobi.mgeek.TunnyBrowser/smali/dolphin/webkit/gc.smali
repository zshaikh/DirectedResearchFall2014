.class Ldolphin/webkit/gc;
.super Ljava/lang/Thread;
.source "Predictor.java"


# instance fields
.field private a:Ldolphin/webkit/gb;


# direct methods
.method constructor <init>(Ldolphin/webkit/gb;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const-string v0, "webpage-prefetch"

    invoke-virtual {p0, v0}, Ldolphin/webkit/gc;->setName(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ldolphin/webkit/gc;->setPriority(I)V

    .line 31
    iput-object p1, p0, Ldolphin/webkit/gc;->a:Ldolphin/webkit/gb;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Ldolphin/webkit/gc;->a:Ldolphin/webkit/gb;

    .line 39
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ldolphin/webkit/gb;->b()Ljava/lang/String;

    move-result-object v1

    .line 40
    # getter for: Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nativePrefetchUrl: %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    # invokes: Ldolphin/webkit/Predictor;->nativePrefetchUrl(Ljava/lang/String;)V
    invoke-static {v1}, Ldolphin/webkit/Predictor;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v0}, Ldolphin/webkit/gb;->a()V

    .line 52
    return-void
.end method
