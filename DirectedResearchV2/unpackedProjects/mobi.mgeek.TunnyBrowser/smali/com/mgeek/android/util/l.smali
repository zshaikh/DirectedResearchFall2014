.class Lcom/mgeek/android/util/l;
.super Ljava/lang/Object;
.source "GoogleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/mgeek/android/util/k;


# direct methods
.method constructor <init>(Lcom/mgeek/android/util/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mgeek/android/util/l;->e:Lcom/mgeek/android/util/k;

    iput-object p2, p0, Lcom/mgeek/android/util/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgeek/android/util/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgeek/android/util/l;->c:Ljava/lang/String;

    iput p5, p0, Lcom/mgeek/android/util/l;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/mgeek/android/util/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackEvent(%s, %s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mgeek/android/util/l;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mgeek/android/util/l;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mgeek/android/util/l;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    iget-object v0, p0, Lcom/mgeek/android/util/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/mgeek/android/util/l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/util/cn;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/mgeek/android/util/l;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/dolphin/browser/util/cn;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/mgeek/android/util/l;->e:Lcom/mgeek/android/util/k;

    invoke-static {v3}, Lcom/mgeek/android/util/k;->a(Lcom/mgeek/android/util/k;)Lcom/google/android/apps/analytics/i;

    move-result-object v3

    iget v4, p0, Lcom/mgeek/android/util/l;->d:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Lcom/mgeek/android/util/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
