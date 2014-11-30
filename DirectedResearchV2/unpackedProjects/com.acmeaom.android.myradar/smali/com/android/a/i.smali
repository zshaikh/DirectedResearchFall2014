.class Lcom/android/a/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/a/g;

.field private final b:Lcom/android/a/p;

.field private final c:Lcom/android/a/t;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/a/g;Lcom/android/a/p;Lcom/android/a/t;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/a/i;->a:Lcom/android/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    .line 84
    iput-object p3, p0, Lcom/android/a/i;->c:Lcom/android/a/t;

    .line 85
    iput-object p4, p0, Lcom/android/a/i;->d:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    invoke-virtual {v0}, Lcom/android/a/p;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/a/i;->c:Lcom/android/a/t;

    invoke-virtual {v0}, Lcom/android/a/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    iget-object v1, p0, Lcom/android/a/i;->c:Lcom/android/a/t;

    iget-object v1, v1, Lcom/android/a/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/a/p;->a(Ljava/lang/Object;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/a/i;->c:Lcom/android/a/t;

    iget-boolean v0, v0, Lcom/android/a/t;->d:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/android/a/i;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/a/i;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    iget-object v1, p0, Lcom/android/a/i;->c:Lcom/android/a/t;

    iget-object v1, v1, Lcom/android/a/t;->c:Lcom/android/a/aa;

    invoke-virtual {v0, v1}, Lcom/android/a/p;->b(Lcom/android/a/aa;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/a/i;->b:Lcom/android/a/p;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
